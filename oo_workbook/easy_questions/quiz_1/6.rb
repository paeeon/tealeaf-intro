class Cube
  # attr_accessor :volume

  def initialize(volume)
    @volume = volume
  end

  def get_volume
    @volume
  end

end

big_cube = Cube.new(5000)
big_cube.get_volume