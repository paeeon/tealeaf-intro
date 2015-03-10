h1 = { "a" => 100, "b" => 200 }
h2 = { "b" => 254, "c" => 300 }
h3 = { "a" => 100, "b" => 200 }
h4 = { "b" => 254, "c" => 300 }

puts "\nThis is h1 merged with h2, NON-destructively: "
puts h1.merge(h2)
puts "This is h1: #{h1}\nThis is h2: #{h2}"
puts "\nThis is h3 merged with h4, destructively: "
puts h3.merge!(h4)
puts "This is h3: #{h3}\nThis is h4: #{h4}\nLooks like h3 has a new c key-value pair in it!"