class Cat
  def initialize(name)
    @name = name
  end

  # This method is currently covered by a test
  def name
    "#{@name}!!!"
  end

  # This method is currently covered by a test
  def speak(animal = nil)
    if animal
      return anmal
    else
      "meow"
    end
  end

  # This method is NOT currently covered by a test
  def lives_left_to_live
    9
  end

  def bad(baba = "foobar")
    puts baba
  end

  def untested
    puts bad "foo"
  end

  def also_untested
    puts bad "foo"
  end

  def with_branches(param)
    if param
      puts "foo"
    else
      puts "bar"
    end
  end

  # :nocov:
  def skip_this_method
    never_reached
  end
  # :nocov:
end
