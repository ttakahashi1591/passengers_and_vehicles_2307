require 'rspec'
require './lib/passenger'
require './lib/vehicle'

RSpec.describe Vehicle do
  before(:each) do
    @vehicle = Vehicle.new("2001", "Honda", "Civic")
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
    @jude = Passenger.new({"name" => "Jude", "age" => 20}) 
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
  end

  describe "#initialize" do
    it "exists" do
      expect(@vehicle).to be_a(Vehicle)
    end
  end

  describe "#year" do
    it "has the year built" do
      expect(@vehicle.year).to eq("2001")
    end
  end

  describe "#make" do
    it "has a make" do
      expect(@vehicle.make).to eq("Honda")
    end
  end

  describe "#model" do
    it "has a model" do
      expect(@vehicle.model).to eq("Civic")
    end
  end

  describe "#speeding?" do
    it "is speeding" do
      expect(@vehicle.speeding?).to eq(false)

      @vehicle.speed

      expect(@vehicle.speeding?).to eq(true)
    end
  end

  describe "#passengers" do
    it "holds number of passengers" do
      expect(@vehicle.passengers).to eq([]) 
    end
  end

  describe "#add_passenger" do
    it "adds a passenger" do
      expect(@vehicle.passengers).to eq([])

      @vehicle.add_passenger(@charlie) 
      @vehicle.add_passenger(@jude) 
      @vehicle.add_passenger(@taylor) 

      expect(@vehicle.passengers).to be_a(Array)
    end
  end

  describe "#num_adults" do
    it "returns number of adults in vehicle" do
      @vehicle.add_passenger(@charlie) 
      @vehicle.add_passenger(@jude) 
      @vehicle.add_passenger(@taylor) 
      
      expect(@vehicle.num_adults).to eq(2)
    end
  end
end