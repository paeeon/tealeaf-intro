arr_hash = {"Fred"=>0, "Wilma"=>1, "Barney"=>2, "Betty"=>3, "BamBam"=>4, "Pebbles"=>5}

barneys_name_and_number = arr_hash.assoc("Barney")

arr = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
new_hash = {}

arr.each_with_index do |value, index|
  new_hash[value] = index
end

p new_hash