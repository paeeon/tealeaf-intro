arr = %w( fred Barney Wilma betty BamBam Pebbles)

p arr.map { |x| x.upcase }.sort! { |a, b| a.size <=> b.size } 
# Oops, didn't know this, but I could have used arr.sort!{ |a, b| a.casecmp(b) }