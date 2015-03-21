# 1A) Reassigning the variable to something else in an inner scope

x = 4
loop do
  x = "hey there"
  break
end
puts x
# What's x? My guess is "hey there" b/x loop isn't a method? Hell yeah! I win! 



# 1B) Call a method that doesn't mutate the caller

def no_mutate(arr)
  arr.uniq
end

my_arr = [1, 2, 2, 3]
no_mutate(my_arr)
puts my_arr
# What's the output? My guess is "1, 2, 2, 3" Yay! I win again! 



# 1C) Call a method that mutates the caller

def yes_mutate(arr)
  arr.uniq!
end

my_arr = [1, 2, 2, 3]
yes_mutate(my_arr)
puts my_arr 
# What's the output? My guess is "1, 2, 3" Yay! I win again! 



# 2) 

# 3) 
x = “hi”

def my_method
  puts x
end

my_method # => what’s the output of invoking the “my_method” method? "hi"?
# Interesting. undefined local variable or method `“hi”' 
# So even though x is defined as "hi", my_method doesn't seem to care. 
# According to the hint - methods only care about variables that are passed in as arguments.