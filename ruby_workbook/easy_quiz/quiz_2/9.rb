arr = %w(Fred Barney Wilma Betty BamBam Pebbles)
arr.map! do |name|
  name[0] + name[1] + name[2] # Crapnuggets. I could have done name[0, 3]. 
end
p arr