class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age  = 0
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end

# The @@cats_count variable is a class variable that keeps track of how many cats there 
# are in total. Check this out: 

Cat.cats_count
winston = Cat.new("tabby")
Cat.cats_count