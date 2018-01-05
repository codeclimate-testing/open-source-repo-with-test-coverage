require "dog"

RSpec.describe Dog do
  describe "#name" do
    it "is super excited about its name" do
      expect(Dog.new("Milo").name).to eq("Milo!!!")
    end
  end

  describe "#treat?" do
    it "only gets a treat if it is good" do
      expect(Dog.new("Milo", messy: false).treat?).to be true
    end
  end
end
