class Light
attr_accessor :brightness, :color

  def initialize(brightness, color)
    @brightness = brightness
    @color = color 
  end

  def self.display_information
    "I want to turn on the light with a brightness level of super high and a colour of green"
  end

end

# The solution to this problem suggests removing light from display_light_information 
# because it's redundant, since the class already has the word light in it. I can see that.