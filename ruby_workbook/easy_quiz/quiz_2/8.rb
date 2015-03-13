arr = %w(Fred Barney Wilma Betty BamBam Pebbles)
p arr.select { |word| word =~ /Be/ } 

# index = arr.index{ |name| name[0, 2] == "Be" }
# The latter is better because it checks for those two letters in those two spots. 
# My regex checks for any "Be"s, even if it shows up in the middle of a name. 