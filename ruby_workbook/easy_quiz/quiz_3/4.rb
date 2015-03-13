str = "Few things in life are as important as house training your pet dinosaur."
puts str.split(" ").delete_if {|word| word == "house" }.join(" ")