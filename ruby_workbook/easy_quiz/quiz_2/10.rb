arr = %w(Fred Barney Wilma Betty BamBam Pebbles)
arr.map! { |name| name[0,3] }
p arr