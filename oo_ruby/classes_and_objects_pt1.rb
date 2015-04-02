# class GoodDog
#   attr_accessor :name, :height, :weight
# 
#   def initialize(n, h, w)
#     @name = n
#     @height = h
#     @weight = w
#   end
# 
#   def speak
#     "#{name} says Arf!"
#   end
# 
#   def change_info(n, h, w)
#     self.name = n
#     self.height = h
#     self.weight = w
#   end
# 
#   def info
#     "#{self.name} weighs #{self.weight} and is #{self.height} tall."
#   end
# end
# 
# sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
# puts sparky.info
# 
# sparky.change_info('Spartacus', '24 inches', '45 lbs')
# puts sparky.info# 

class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @current_speed = 0
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

lumina = MyCar.new(1997, 'chevy lumina', 'white')
lumina.speed_up(20)
lumina.current_speed
lumina.speed_up(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.shut_off
lumina.current_speed
lumina.color = 'black'
puts lumina.color
puts lumina.year
lumina.spray_paint('blue')
puts lumina.color
