module Taste
  def flavor(flavor)
    puts "#{flavor}"
  end
end

class Orange
  include Taste
end

class HotSauce
  include Taste
end

# You can find an object's method lookup by calling the ancestors method. 

puts "---Orange's method Lookup---"
puts Orange.ancestors

puts "\n---HotSauce's method Lookup---"
puts HotSauce.ancestors