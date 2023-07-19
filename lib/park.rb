class Park
  attr_reader :unique_name,
              :admission_price,
              :vehicles

  def initialize(unique_name, admission_price)
    @unique_name = unique_name
    @admission_price = admission_price
    @vehicles = []
  end
end