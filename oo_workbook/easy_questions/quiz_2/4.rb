class BeesWax
  attr_accessor :type

  def initialize(type)
    @type = type
  end

#  def type
#    @type
#  end
#
#  def type=(t)
#    @type = t
#  end

  def what_type
    print "I am a #{type} of Bees Wax"
  end
end

# Cool! I did not know that it is standard practice to refer to 
# instance variables inside the class of without @ if the getter method is available.
