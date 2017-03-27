class Dog
  def initialize(name, messy: true)
    @name = name
    @messy = true
  end

  # This method is currently covered by a test
  def name
    "#{@name}!!!"
  end

  # This method is NOT currently covered by a test
  def age_in_dog_years
    45
  end

  def bad(baba = baba)
    puts baba
  end

  def untested
    puts bad "foo"
  end

  def also_untested
    puts bad "foo"
  end

  def treat?
    if good_boy?
      true
    else
      "false"
    end
  end

  def good_boy?
    !@messy
  end
end
