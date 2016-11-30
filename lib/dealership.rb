class Dealership
  @@dealership = []

  attr_reader(:name)

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @id = @@dealership.length().+(1)
    @cars = []
  end

  def id
    @id
  end

  def cars
    @cars
  end

  def self.all
    @@dealership
  end

  def save
    @@dealership.push(self)
  end

  def self.clear
    @@dealership = []
  end

  def self.find(id)
    found_dealership = nil
    @@dealership.each() do |dealership|
      if dealership.id().eql?(id)
        found_dealership = dealership
      end
    end
    found_dealership
  end

  def add_vehicle(vehicle)
    @cars.push(vehicle)
  end

end
