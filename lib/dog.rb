class Dog
  def initialize(name)
    @name = name
  end

  # This method is currently covered by a test
  def name
    "#{@name}!!!"
  end

  # This method is NOT currently covered by a test
  def age_in_dog_years
    45
  end

  def bad(baba = "foobar")
    puts baba
  end

  def more_bad(baba = "baba")
    puts baba
  end
  
  def untested
    puts bad "foo"
  end

  def also_untested
    puts bad "foo"
  end

  def with_branches
    if 1
      puts "foo"
    # :nocov:
    else
      puts "bar"
    # :nocov: 
    end
  end

  # :nocov:
  def skip_this_method
    never_reached
  end
  # :nocov:


  # :nocov:
  def skip_this_other_method
    never_reached
  end
  # :nocov:
end
