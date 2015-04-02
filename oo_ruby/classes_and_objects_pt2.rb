# class GoodDog
#   DOG_YEARS = 7
# 
#   attr_accessor :name, :age
# 
#   def initialize(n, a)
#     self.name = n
#     self.age = a * DOG_YEARS
#   end
# 
#   def to_s
#     "This dog's name is #{name} and it is #{age} in dog years."
#   end
# end
# 
# sparky = GoodDog.new("Sparky", 4)
# puts sparky.age
# puts sparky

class MyCar
  attr_accessor :color
  attr_reader :year, :model

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @current_speed = 0
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def to_s
    "This car is a #{self.year} #{self.model} in #{self.color}."
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
    puts "Car's off!"
  end

  def spray_paint(paint_color)
    puts "spraying "
    self.color = paint_color
    puts "The car is now painted #{self.color}!"
  end
end

MyCar.gas_mileage(13, 351) 
lumina = MyCar.new(1997, 'white', 'chevy lumina')
puts lumina