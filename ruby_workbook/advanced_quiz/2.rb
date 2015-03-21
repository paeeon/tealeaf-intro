my_hash = {a: 'hi'}
n = my_hash[:a]
n << ' there'

puts n  #  => "hi there"
puts my_hash

# Ahh! I dunno! My guess is {a: 'hi there'} ???? 
# OMG I'M RIGHT LOL except {:a=>"hi there"} with the hash rocket w/e

# If instead of modifying the original object, we wanted only modify n but 
# not my_hash, there are a couple of options:
# 
#   - we could initialize n with a reference to a new object containing 
#     the same value by n = my_hash[:a].clone.
#   - we can use string concatenation, n = n + ' there', which returns a 
#     new String object instead of modifying the original object.