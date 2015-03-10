arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

p arr.delete_if {|condition| condition.start_with?('s', 'w') }
