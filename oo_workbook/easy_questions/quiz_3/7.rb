class Light
  attr_accessor :brightness, :color

  def initialize(brightness, color)
    @brightness = brightness
    @color = color 
  end

  def self.display_information
    return "I want to turn on the light with a brightness level of super high and a colour of green"
  end

end

# I'm guessing the display_information method doesn't add any value because it's not
# using any dynamic values? Ohh, it's the return keyword. Well, obviously LOL man 
# I totally missed that