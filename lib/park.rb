class Park
  attr_reader :unique_name,
              :admission_price,
              :vehicles

  def initialize(unique_name, admission_price)
    @unique_name = unique_name
    @admission_price = admission_price
    @vehicles = []
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
  end

  def passengers
    @vehicles.flat_map(&:passengers)
  end

  def revenue
    adult_passengers = passengers.select(&:adult?)
    adult_passengers.count * @admission_price
  end
end