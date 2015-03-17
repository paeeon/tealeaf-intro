ary = [1, 2, 3, 4]
ary.each do |item|
  p item
  ary.shift(1)
end
# I think in this case, nothing different would happen, because we p the item before it's shifted? 
# But it ACTAULLY outputs 1 and 3, which is bizarre. I guess that what it does is it shifts the 
# 2??? And the 1 has already been shifted somehow????? I don't really get it, honestly. 
# Ohhh, I see... the loop counter used by #each is compared against the CURRENT LENGTH of the array
# rather than its original length. Thus, the removal of the first item in the first pass changes
#  the value found for the second pass. Man, that's crazy. 
ary = [1, 2, 3, 4]
ary.each do |item|
  p item
  ary.pop(1)
end
#Here I suspect we'll print 1 and 2? And I'm right! Hooray! 