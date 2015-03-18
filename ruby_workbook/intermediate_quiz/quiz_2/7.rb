munster_hash = { 
     "Herman" => { "age" => 32, "gender" => "male" }, 
     "Lily" => { "age" => 30, "gender" => "female" }, 
     "Grandpa" => { "age" => 402, "gender" => "male" }, 
     "Eddie" => { "age" => 10, "gender" => "male" },
     "Marilyn" => { "age" => 23, "gender" => "female"}
    }

def mess_with_demographics(demo_hash)
  demo_hash.values.each do | family_member |
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

new_hash = mess_with_demographics(munster_hash)

p munster_hash
p new_hash