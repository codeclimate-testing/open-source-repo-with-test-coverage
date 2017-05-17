class Complex

  def search
    filter_mapping = {"cost" => "rcost", "quality" => "rquality", "time" => "rtime", "experience" => "rexperience", "communication" => "rcommunication"}
    @filters = params[:filter].split(",") rescue []
    @sort = params[:sort]

    @user_type = params[:s_user_type]
    @skills = params[:s_skills]
    @location = params[:location]
    @max_rate = params[:max_rate]
    @availability = params[:availability]

    @users = User.scoped.joins(:user_skills)
    @users = @users.where('user_type = ?', @user_type) if @user_type.present?
    @users = @users.where('user_skills.skill_id in (?)', @skills.map(&:to_i)) if @skills.present? && @skills.size > 0
    @users = @users.where('availability = ?', @availability) if @availability.present?
    @users = @users.where('location_country = ?', @location) if @location.present?
    @users = @users.where('rate < ?', @max_rate.to_i) if @max_rate.present?
    @users = @users.page(params[:page]).per(PER_PAGE)

    @filters.each do |f|
      if filter_mapping.keys.include?(f)
        @users = @users.order("#{filter_mapping[f]} desc")
      end
    end

    @users = @users.order('id asc') if @filters.empty?
    @advanced_link = @location.blank? && @max_rate.blank? && @availability.blank?
    render :index
  end
end
