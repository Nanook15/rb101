# write a method that takes an array of intgers
# returns average of all numbers in array

def average(array)
  (array.sum / array.size).to_f
end


puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# Launch School Answer
# def average(numbers)
#   sum = numbers.reduce { |sum, number| sum + number }
#   sum / numbers.count
# end