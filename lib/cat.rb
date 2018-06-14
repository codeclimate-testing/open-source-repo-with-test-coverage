class Cat
  def initialize(name)
    @name = name
  end

  # This method is currently covered by a test
  def name
    "#{@name}!!!"
  end

  # This method is currently covered by a test
  def speak
    "meow"
  end

  # This method is NOT currently covered by a test
  def lives_left_to_live
    9
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
end
