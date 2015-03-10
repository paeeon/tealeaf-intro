puts "Give me a number."
num = gets.chomp.to_i

case
when num >= 0 && num < 50
  puts "Your number is between 0 and 50, right?"
when num > 50 && num < 100
  puts "Your number is between 50 and 100, right?"
when num > 100
  puts "Your number is over 100, right?"
else
  puts "AHH! What did you even give me?"
end