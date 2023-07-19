require 'rspec'
require './lib/passenger'
require './lib/vehicle'
require './lib/park'

RSpec.describe Park do
  before(:each) do
    @park = Park.new("Redwood", 35)
    @vehicle = Vehicle.new("2001", "Honda", "Civic")
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
    @jude = Passenger.new({"name" => "Jude", "age" => 20}) 
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
  end

  describe "#initialize" do
    it "exists" do
      expect(@park).to be_a(Park)
      expect(@park).to be_a(Park)
    end
  end

  describe "#vehicles" do
    it "returns an array of vehicles entering the park" do
      expect(@park.vehicles).to be_a(Array)
      expect(@park.vehicles).to be_a(Array)
    end
  end

  describe "#add_vehicle" do
    it "adds a vehicle visiting the park" do
      expect(@park.vehicles).to be_a(Array)

      @park.add_vehicle(@vehicle)

      expect(@park.vehicles).to be_a(Array)
    end
  end

  describe "#passengers" do
    it "returns an array of passengers entering the park" do
      expect(@park.passengers).to be_a(Array)

      @vehicle.add_passenger(@charlie)
      @vehicle.add_passenger(@jude)
      @vehicle.add_passenger(@taylor)

      expect(@park.passengers).to be_a(Array)
    end
  end

  describe "#revenue" do
    it "returns the amount of revenue made by the park" do
      expect(@park.revenue).to eq(0)

      @vehicle.add_passenger(@charlie)
      @vehicle.add_passenger(@jude)
      @vehicle.add_passenger(@taylor)
      @park.add_vehicle(@vehicle)

      expect(@park.revenue).to eq(70)
    end
  end
end