string = "The Flintstones Rock!"
x = 0

until x > 10
  puts string.lstrip.insert(0, (" " * x))
  x += 1
end

# Alternative: 10.times{ |index| puts "The Flintstones Rock!".rjust(21 + index) }