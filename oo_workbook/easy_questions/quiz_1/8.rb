class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age  = 0
  end

  def make_one_year_older
    self.age += 1
  end
end

# I think self refers to the instance variable. So by writing self.age there, 
# we're looking at the age of an instance variable of Cat. 

kitty_cat = Cat.new("tabby")
kitty_cat.make_one_year_older
kitty_cat.age