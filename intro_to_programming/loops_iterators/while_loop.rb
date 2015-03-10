x = ""
until x == "STOP"
  puts "How's it going?"
  response = gets.chomp
  puts "Tell me to STOP if you find this annoying."
  x = gets.chomp
end