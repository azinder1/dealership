require('pry')
require('vehicles')
require('dealership')
require('rspec')

describe(Vehicle) do
  before() do
    Vehicle.clear()
  end

  describe('#year') do
    it('creates the vehicle object') do
      test_vehicle = Vehicle.new({:year => "1996", :color => "lime green", :model  => "Corolla"})
      expect(test_vehicle.year()).to(eq("1996"))
    end
  end
  describe('#color') do
    it('creates the vehicle object') do
      test_vehicle = Vehicle.new({:year => "1996", :color => "lime green", :model  => "Corolla"})
      expect(test_vehicle.color()).to(eq("lime green"))
    end
  end
  describe('#model') do
    it('creates the vehicle object') do
      test_vehicle = Vehicle.new({:year => "1996", :color => "lime green", :model  => "Corolla"})
      expect(test_vehicle.model()).to(eq("Corolla"))
    end
  end

  describe('#id') do
    it('creates a unique id for each vehicle') do
      test_vehicle = Vehicle.new({:year => "1996", :color => "lime green", :model  => "Corolla"})
      expect(test_vehicle.id()).to(eq(1))
    end
  end

  describe('#save') do
   it("saves the object to the global Vehicles array") do
     test_vehicle = Vehicle.new({:year => "1996", :color => "lime green", :model  => "Corolla"})
     test_vehicle.save()
     expect(Vehicle.all()).to(eq([test_vehicle]))
   end
  end

  describe('.all') do
    it('returns the array of Vehicles created') do
      test_vehicle = Vehicle.new({:year => "1996", :color => "lime green", :model  => "Corolla"})
      test_vehicle2 = Vehicle.new({:year => "1996", :color => "lime green", :model  => "Corolla"})
      expect(Vehicle.all()).to(eq([]))
    end
  end

  describe('.find') do
    it("finds a vehicle by it's id") do
      test_vehicle = Vehicle.new({:year => "1996", :color => "lime green", :model  => "Corolla"})
      test_vehicle.save()
      expect(Vehicle.find(test_vehicle.id())).to(eq(test_vehicle))
    end
  end
end
