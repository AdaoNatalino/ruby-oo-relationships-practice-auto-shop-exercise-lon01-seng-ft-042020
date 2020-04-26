require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#car owners
o1 = CarOwner.new("Adao")
o2 = CarOwner.new("Leonardo")
o3 = CarOwner.new("Caio")

#mechanic
m1 = Mechanic.new("Felipe", "antique")
m2 = Mechanic.new("Marcos", "exotic")
m3 = Mechanic.new("Paulao", "clunker")
m4 = Mechanic.new("Thiago", "pickup")
m5 = Mechanic.new("Daniel", "turbo")


#cars
c1 = Car.new(o1, "Toyota", "Subaru S3 (78)", "antique", m1)
c2 = Car.new(o1, "BMW", "X1 (2010)", "exotic", m2)
c3 = Car.new(o1, "MB", "C300 (2018)", "turbo", m5)

c4 = Car.new(o2, "GM", "Corsa S (99)", "clunker", m3)
c5 = Car.new(o2, "Toyota", "Hilux", "pickup", m4)

c6 = Car.new(o3, "Fiat", "Toro", "antique", m1)
c7 = Car.new(o3, "Hyundai", "I-30 mod", "pickup", m4)

binding.pry

puts "Cars are cool!"