# class Animal
#   def speak
#     "Hello!"
#   end
# end
# 
# class GoodDog < Animal
# end
# 
# class Cat < Animal
# end
# 
# sparky = GoodDog.new
# paws = Cat.new
# puts sparky.speak
# puts paws.speak

module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

class Vehicle
  @@number_of_vehicles = 0
  attr_accessor :color
  attr_reader :year, :model

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @current_speed = 0
    @passengers = []
    @@number_of_vehicles += 1
  end

  def self.number_of_inheritors
    puts "There are presently #{NUMBER_OF_OBJECTS_INHERITING} 
          inheriting from the Vehicle superclass."
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def to_s
    "This vehicle is a #{self.year} #{self.model} in #{self.color}."
  end

  def current_speed
    puts "You're currently going at #{@current_speed}."
  end

  def speed_up(number)
    @current_speed += number
    puts "Vroom! You're now going at #{@current_speed} mph!"
  end

  def brake(number)
    @current_speed -= number
    puts "Okay, winding down.. You're now going at #{@current_speed} mph."
  end

  def shut_off
    @current_speed = 0
    puts "Vehicle's off!"
  end

  def spray_paint(paint_color)
    puts "spraying "
    self.color = paint_color
    puts "The vehicle is now painted #{self.color}!"
  end

  def pick_up_passenger(passenger_name)
    puts "You've picked up #{passenger_name}."
    @passengers << passenger_name
    puts "You're now riding with #{@passengers}."
  end

  def age
    "This #{self.model} is #{calculate_age} years old."
  end

  private

  def calculate_age
    Time.now.year - self.year
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
end

class MyTruck < Vehicle
  include Towable

  NUMBER_OF_DOORS = 2
end

class Student
  attr_reader :grade
  attr_accessor :student_name

  def initialize(name, grade)
    @student_name = name
    @grade = grade
  end

  def better_grade_than?(student_name)
    (self.grade > student_name.grade) ? true : false
  end
end

lumina = MyCar.new(1997, 'white', 'chevy lumina')
lumina.speed_up(20)
lumina.current_speed
lumina.speed_up(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.shut_off
MyCar.gas_mileage(13, 351)
lumina.spray_paint("red")
lumina.pick_up_passenger("Anders")
puts lumina
puts lumina.age
joe = Student.new("Joe", 85)
bob = Student.new("Bob", 73)
puts "Well done!" if joe.better_grade_than?(bob)

puts "---MyCar method lookup---"
puts MyCar.ancestors

puts "---MyTruck method lookup---"
puts MyTruck.ancestors

puts "---Vehicle method lookup---"
puts Vehicle.ancestors