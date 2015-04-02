# Q1 
# How do we create an object in Ruby? 
# Give an example of the creation of an object.

class Animal
  include Fight
end

bird = Animal.new

# Q2
# What is a module? What is its purpose? How do we use 
# them with our classes? Create a module for the class you 
# created in exercise 1 and include it properly.

# A module is a collection of behaviors that is usable in
# classes via mixins. A module allows us to group reusable 
# code into one place. Modules are also used as a namespace.

module Fight
  def call(sound)
    puts "#{sound}"
  end
end

bird.call('Squawk!!')