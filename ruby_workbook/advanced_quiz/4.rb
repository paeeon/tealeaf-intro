ary = [1, 2, 3, 4]
da_lamb = lambda { |input| input *= 10 }
ary.each &da_lamb
puts ary.inspect

# My guess is ["10", "20", "30", "40"]?
# Huh, I was wrong. 
# Each element of the array is passed to the lambda block individually.
# As that proceeds, the lambda block first stores the id of that element 
# in its own local variable. It then replaces the passed-in object id with
# a new object id after multiplying the value of the original by 10.

da_string = "10"
puts da_string.object_id
ary = [1, 2, 3, 4]
da_lamb = lambda { |input| da_string.gsub!(/\d0/,(input * 10).to_s) }
ary.each &da_lamb
puts da_string

# My guess is... I have no idea! 
# It's supposed to be 40. 
# As each element is passed to the block, gsub! replaces our two digits 
# IN THE SAME STRING OBJECT with a new set of two digits. 

da_string = ""
ary = [1, 2, 3, 4]
da_lamb = lambda { |input| da_string << (input * 10).to_s }
ary.each &da_lamb
puts da_string

# My guess is "10203040"? 
# YAY! 
# As each element is passed to the block, << appends the new digits to 
# our original string. 

da_string = ""
ary = [1, 2, 3, 4]
da_lamb = lambda { |input| da_string = da_string + (input * 10).to_s }
ary.each &da_lamb
puts da_string

# My guess is ""
# CRAP! It's actually 10203040! 
# Suprise! A lambda gets it's scope from the scope where it is defined. 
# It does not have a scope of its own.

da_string = "original"
ary = [1, 2, 3, 4]
def call_me(da_string, ary)
  da_string = "not so original"
  da_lamb = lambda { |input| da_string = da_string + (input * 10).to_s }
  ary.each &da_lamb
end
call_me(da_string, ary)
puts da_string

# My guess is "original" (Ok, I peeked by accident, but I'm pretty sure the stuff
# that happens in call_me stays in call_me.) YUP! 
# Here we have reassigned the string inside the method before we messed with it...
# therefore the one in the caller's scope is unaffected by the manipulation 
# inside the lambda.