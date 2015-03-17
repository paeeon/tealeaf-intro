str = "The Flintstones Rock"
hash = {} 

str.split("").delete_if { |a| a == " " }.each do |letter|
  if hash.has_key?(letter)
    hash[letter] += 1
  else
    hash[letter] = 1
  end
end
p hash

# alt method: 
# result = {}
# letters = ('A'..'Z').to_a.concat( ('a'..'z').to_a )
# letters.each do |letter|
#   count = str.scan(letter.to_s).count
#   result[letter] = count if count > 0
# end