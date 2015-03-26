# Question 1
# a = 1
# b = a
# b = 3
# My guess is that a is 3... OH! it's actually 1! I get it! 

# Question 2
# An array is kind of like a list with associated positions. 
# A hash has key-value pairs, and is more like a dictionary. 

# Question 3
# arr = [1, 2, 3, 3] # My guess is it returns [1, 2, 3, 3] - yep! 
# [1, 2, 3, 3].uniq # My guess is it returns [1, 2, 3]
# [1, 2, 3, 3].uniq! # My guess is it returns [1, 2, 3]

# Question 4
# map goes through each item and modifies it, returns a new array
# select chooses items in an array based on a criteria, and also 
# returns a new array. 

# Question 5
# h = {"Here"=>"is", "A"=>"Hash", "With"=>"Strings"}

# Question 6
# x = 1
# x.odd? ? "no way!" : "yes, sir!"
  # My guess is that this returns "no way!" YUP! I'm right! 

# Question 7
# x = 1
# 3.times do
#   x += 1
# end
# puts x
# My guess is that x is 1??? Oh crap it's actually 4. I guess times 
# doesn't create a new scope. 

# Question 8
3.times do
  x += 1
end
puts x
# Huh, I get a NoMethodError? Guess that's because x doesn't exist yet?
# 