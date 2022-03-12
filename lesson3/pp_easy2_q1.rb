# query a hash to see if a key is present

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages.assoc("Spot")  # => returns nil

p ages.any? { |key, value| key == "Spot" }  # => returns false

p ages.include?("Spot")  # => returns false

p ages.has_key?("Spot")  # => returns false

p ages.key?("Spot") # => returns false

p ages.member?("Spot") # => returns false