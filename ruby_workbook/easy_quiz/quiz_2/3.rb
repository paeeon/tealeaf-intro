hash = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

hash.each do |key, value| #alt: hash.keep_if{ |key, value| value < 100 }
  if value > 100
    hash.delete(key)
  end
end

p hash