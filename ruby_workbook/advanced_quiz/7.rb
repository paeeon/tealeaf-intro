def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.length != 4
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break if !is_a_number?(word) # oops this is supposed to be: return false if !is_a_number?(word)
  end
  return true
end

dot_separated_ip_address?("12.1.43.11")
dot_separated_ip_address?("23.2.353.3.2")