# write a method that counts the number of occurrences or each element
# in a given array. The words in the array are case sensitive
# once counter printg each element along the number of occurrences

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(vehicles)
  vehicle_type = vehicles.uniq
  
  loop do
    arr = []
    vehicles.select do |vehicle|
      if vehicle == vehicle_type[0]
        arr.push(vehicle)
      end
    end
    puts "#{vehicle_type[0]} => #{arr.size}"
    vehicle_type.shift
    break if vehicle_type == []
  end
end

count_occurrences(vehicles)

# launch school solution
# def count_occurrences(array)
#   vehicle_type_count = {}

#   array.uniq.each do |vehicle_type|
#     vehicle_type_count[vehicle_type] = array.count(element)
#   end

#   occurrences.each do |element, count|
#     puts "#{element} => #{count}"
#   end
# end
