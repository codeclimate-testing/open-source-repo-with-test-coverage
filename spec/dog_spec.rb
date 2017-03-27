require "dog"

RSpec.describe Dog do
  describe "#name" do
    it "is super excited about its name" do
      expect(Dog.new("Milo").name).to eq("Milo!!!")
    end
  end

  describe "#treat?" do
    expect(Dog.new("Milo").treat?).to be true
  end
end
