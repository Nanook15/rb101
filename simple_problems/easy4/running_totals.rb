#write a method that takes an array of numbers
# and returns an array with the same number of elements
# and each element has the running total from the original array

#element 0, element 0 + 1, element 0 + 1 + 2 etc
#incrementing elements
#loop 

def running_total(array)
  counter = 0
  total_loops = array.size
  array[total_loops] = 0
  final_array = []

  loop do
    break if counter == total_loops
    final_array[counter] = array.shift
    array[0] = final_array[counter] + array[0]
    counter += 1
  end

  final_array

end

def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end





p running_total([2, 5, 13]) # == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) # == [14, 25, 32, 47, 67]
p running_total([3]) #== [3]
p running_total([]) #== []