vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]

def count_occurrences(types)
  
  drop = types.map { |i| i.downcase }

  list = drop.uniq

  loop do
    num = drop.count { |i| i == list[0] }
    puts "#{list[0]} = #{num}"
    list.shift
    break if list.length == 0
  end
  
end


count_occurrences(vehicles)

