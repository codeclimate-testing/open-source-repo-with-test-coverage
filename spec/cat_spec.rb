require "cat"

RSpec.describe Cat do
  describe "#name" do
    it "is super excited about its name" do
      expect(Cat.new("Milo").name).to eq("Milo!!!")
    end
  end

  describe "#speak" do
    it "says meow" do
      expect(Cat.new("Ninetales").speak).to eq("meow")
    end
  end
end
