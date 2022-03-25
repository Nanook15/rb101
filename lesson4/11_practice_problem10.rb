# update the following hash with a new key "age_group"
# that determines age_groupd as either kid, adult or Senior
# and is based on the following ranges 0 -17 kid, 18 - 64 adult and 65 plus as senior
# using a case statement and range

# take a hash
# iterate over each hash k,v pair
#  call the value for the key age
# assess vale against range
# create new key and assign value kid, adult or senior


munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do | key, value |
  
  case value["age"]
  when (0...18)
   value["age_group"] = 'kid'
  when 18...65
    value["age_group"] = 'adult'
  else
    value["age_group"] = 'senior'
  end
end

p munsters

  