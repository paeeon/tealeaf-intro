# a = [1, 2, 3, 3]
# b = a
# c = a.uniq # Why is it that when I call a.uniq! here instead of uniq, a, b, and c all 
             # turn out to be [1, 2, 3]? I guess it's because simply writing a.uniq! is so 
             # intense that it actually modifies a, even if we're not literally reassigning 
             # a.uniq! to a (as in, a = a.uniq!)

# puts "a is #{a}" # My guess is [1, 2, 3, 3]
# puts "b is #{b}" # My guess is [1, 2, 3, 3]
# puts "c is #{c}" # My guess is [1, 2, 3] Yup! All my guesses are correct! 

# def test(b)
#   b.map! {|letter| "I like the letter: #{letter}"} # Calling map! here mutates the original value of a. 
# end

# a = ['a', 'b', 'c']
# test(a)
# p a





# a = 'hi there'
# b = a
# a.gsub(' ', '_')
# puts b # => what’s the output? My guess is "hi there"? Oh crap! It's actually "hi_there"! 
#        # BUT if I use gsub and not gsub!, b is "hi there". Hmmm. I guess even when b is 
#        # assigned to the value of a, and a is mutated, b changes along with it. 

a = 'hi there' 
b = a 
a = [1, 2, 3] 
puts b # => what’s the output? My guess is... 'hi there'! YAY! Aha! 

# The difference between the two above code examples is that gsub! is a method that mutates the 
# original value of a, which belongs to both a and b. But here a is simply reassigned to a new value. 
# a isn't changed, it's totally reassigned. Thus, b retains its 'hi there', which originally also 
# belonged to a. 