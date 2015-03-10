a_great_hash = {friend: "Anders", pet: "Max", mother: "Susan"}

def prints_keys(hash)
  hash.each do |key, value|
    puts "#{key.to_s}\n"
  end
end

def prints_values(hash)
  hash.each do |key, value|
    puts "#{value}\n"
  end
end

def prints_both(hash)
  hash.each do |key, value|
    puts "Key: #{key.to_s}\nValue: #{value}\n\n"
  end
end

prints_keys(a_great_hash)
prints_values(a_great_hash)
prints_both(a_great_hash)