module Speed
  def go_fast
    puts "I am a #{self.class} and going super fast!"
  end
end

class Car
  include Speed
  def go_slow
    puts "I am safe and driving slow."
  end
end

class Truck
  include Speed
  def go_very_slow
    puts "I am a heavy truck and like going very slow."
  end
end

my_car = Car.new
my_truck = Truck.new
my_car.go_fast
my_truck.go_fast

# I guess the class is printed via self.class. What that's doing is taking the 
# instance variable and looking at its most immediate class. In the case of my_car, 
# that would be Car, and in the case of my_truck, that would be Truck. 