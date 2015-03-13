arr = %w(Fred Barney Wilma Betty BamBam Pebbles)

p arr.sort { |x,y| x.length <=> y.length}