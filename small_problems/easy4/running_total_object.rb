# Write a method that takes an array of numbers &
# returns an array with the same number of elements
# and each element has the running total from the original array

# Input : array of n elements 
# Ouput : array of n elements 

# for each element, add the preceding element 
# take the first element and put it in an array
# take the second element and add it to the first element and put in second element
# take the third element and add it to the second element and put in third element

def running_total(array)
  sum = 0

  array.each_with_object([]) do | element, obj |
    obj << sum += element
  end 

end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
