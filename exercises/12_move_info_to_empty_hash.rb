contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"]["E-mail"] = "joe@email.com"
contacts["Joe Smith"]["Address"] = "123 Main st."
contacts["Joe Smith"]["Phone"] = "555-123-4567"
contacts["Sally Johnson"]["E-mail"] = "sally@email.com"
contacts["Sally Johnson"]["Address"] = "404 Not Found Dr."
contacts["Sally Johnson"]["Phone"] = "123-234-3454"

puts contacts["Joe Smith"]["E-mail"]
puts contacts["Sally Johnson"]["Phone"]