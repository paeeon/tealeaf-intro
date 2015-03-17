def titleize(str)
  str.split(" ").each {|word| word.capitalize! }.join(" ")
end

titleize("This is a cow")
titleize("anders likes chocolate milk")
titleize("i don't like animals!")

# Or as an alternative: str = str.split.map{ |one_word| one_word.downcase.capitalize }.join(' ')
# I don't see why downcase is necessary, but ok. 