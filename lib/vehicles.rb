class Vehicle
  attr_reader(:year, :color, :model)
  def initialize(attributes)
    @year = attributes.fetch(:year)
    @color = attributes.fetch(:color)
    @model = attributes.fetch(:model)
  end
end
