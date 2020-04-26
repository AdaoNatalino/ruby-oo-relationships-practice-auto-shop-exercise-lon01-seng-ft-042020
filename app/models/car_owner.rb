class CarOwner

  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select {|car| car.owner == self}
  end

  def mechanics
    self.cars.map {|car| car.mechanic}
  end

  def self.average_number_of_cars
    (Car.all.length / self.all.length.to_f).round(2)
  end
end
