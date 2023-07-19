require 'rspec'
require './lib/passenger'

RSpec.describe Passenger do
  before(:each) do
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})   
  end
  
  describe "#initialize" do
    it "exists" do
      expect(@charlie).to be_a Passenger
      expect(@taylor).to be_a Passenger
    end
  end

  describe "#name" do
    it "has a name" do
      expect(@charlie.name).to eq("Charlie")
      expect(@taylor.name).to eq("Taylor")
    end
  end

  describe "#age" do
    it "has an age" do
      expect(@charlie.age).to eq(18)
      expect(@taylor.age).to eq(12)
    end
  end

  describe "#adult?" do
    it "is over 18 years old" do
      expect(@charlie.adult?).to eq(true)
      expect(@taylor.adult?).to eq(false)
    end
  end

  describe "#driver?" do
    it "is able to drive" do
      expect(@charlie.driver?).to eq(false)
      expect(@taylor.driver?).to eq(false)

      @charlie.drive

      expect(@charlie.driver?).to eq(true)
    end
  end
end