#1 

# def mess_with_vars(one, two, three)
#    one = two
#    two = three
#    three = one
# end
#
#  one = "one"
#  two = "two"
#  three = "three"
#
#  mess_with_vars(one, two, three)
#
#  puts "one is: #{one}"
#  puts "two is: #{two}"
#  puts "three is: #{three}"

# one is "two", two is "three" and three is "two" ??? 
# Crap! I'm wrong - I guess what's happening is that the mess_with_vars method is 
# creating new vars for one, two and three because of the = operator??? 



#2 

#def mess_with_vars(one, two, three)
#  one = "two"
#  two = "three"
#  three = "one"
#end
#
#one = "one"
#two = "two"
#three = "three"
#
#mess_with_vars(one, two, three)
#
#puts "one is: #{one}"
#puts "two is: #{two}"
#puts "three is: #{three}"

# My guess is one is "one", two is "two" and three is "three". YAY! I'm right! 



#3

def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# My guess is... one is "two", two is "three" and three is "one" YAY!!!! I'm right again!!
# Ok, I think I kinda get this concept now. 