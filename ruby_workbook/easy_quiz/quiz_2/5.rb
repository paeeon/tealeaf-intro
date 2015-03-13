hash = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
rest = { "Marilyn" => 22, "Spot" => 237 }

rest.each do |key, value| # oh, or hash.merge!(rest)
  hash[key] = value
end 