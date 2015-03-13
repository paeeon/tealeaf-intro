hash = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
hash.assoc("Spot")
hash.fetch("Spot", "Nope, not here!")
hash.has_key?("Spot")