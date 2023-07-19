require 'rspec'
require './lib/passenger'
require './lib/vehicle'
require './lib/park'

RSpec.describe Park do
  before(:each) do
    @park_1 = Park.new("Redwood", 35)
    @park_2 = Park.new("Yosemite", 50)
    @vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
    @vehicle_2 = Vehicle.new("2021", "Subaru", "Forester")
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
    @jude = Passenger.new({"name" => "Jude", "age" => 20}) 
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
  end

  describe "#initialize" do
    it "exists" do
      expect(@park_1).to be_a(Park)
      expect(@park_2).to be_a(Park)
    end
  end

  define "#vehicles" do
    it "returns an array of vehicles entering the park" do
      expect(@park.vehicles).to be_a(Array)
    end
  end

  define "#add_vehicle" do
    it "adds a vehicle visiting the park" do
      expect(@park.vehicles).to be_a(Array)

      @vehicle_1.add_vehicle
      @vehicle_2.add_vehicle

      expect(@park.vehicles).to be_a(Array)
require 'pry';binding.pry
    end
  end
end