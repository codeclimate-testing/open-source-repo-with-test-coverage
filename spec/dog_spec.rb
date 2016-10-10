require "dog"

RSpec.describe Dog do
  describe "#name" do
    it "is super excited about its name" do
      expect(Dog.new("Milo").name).to eq("Milo!!!")
    end

    it "is super excited about its age" do
      expect(Dog.new("Milo").age_in_dog_years).to eq(405)
    end
  end
end
