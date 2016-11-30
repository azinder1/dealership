require('pry')
require('vehicles')
require('dealership')
require('rspec')

describe(Vehicle) do
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
end
