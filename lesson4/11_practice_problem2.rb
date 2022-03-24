ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages.each_with_object([0]) do | pair, arr | 
    arr[0] = arr[0] + pair.last
  end
