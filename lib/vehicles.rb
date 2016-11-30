class Vehicle
  @@vehicles = []

  attr_reader(:year, :color, :model)

  def initialize(attributes)
    @year = attributes.fetch(:year)
    @color = attributes.fetch(:color)
    @model = attributes.fetch(:model)
    @id = @@vehicles.length().+(1)
  end

  def id
    @id
  end

  def self.all
    @@vehicles
  end

  def save
    @@vehicles.push(self)
  end

  def self.clear
    @@vehicles = []
  end

  def self.find(id)
    found_vehicle = nil
    @@vehicles.each() do |car|
      if car.id().eql?(id)
        found_vehicle = car
      end
    end
    found_vehicle
  end

end
