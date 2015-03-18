str = "Humpty Dumpty sat on a wall."

puts str.split(" ").reverse.join(" ")

# should be: 
# ary = str.split(/\W/)
# ary.reverse!
# str = ary.join(' ') + '.'
# so that the . at the end of the sentence stays at the end of the sentence.