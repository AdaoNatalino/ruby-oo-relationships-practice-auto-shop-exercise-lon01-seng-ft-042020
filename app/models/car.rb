class Car
  @@all = []

  attr_reader :owner, :make, :model, :classification, :mechanic

  def initialize(owner, make, model, classification, mechanic)
    @owner = owner
    @make = make
    @model = model
    @classification = classification
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    self.all.map {|car| car.classification}.uniq
  end

  def self.find_mechanics(classification)
    Mechanic.all.select {|mec| mec.specialty == classification}
  end

end
