hash = {"Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237}

age_total = 0

hash.each_value do |value|
  age_total += value  # total_age = hash.values.inject(:+)
end