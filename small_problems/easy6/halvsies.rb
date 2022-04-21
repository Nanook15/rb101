# write a method to split an array in two nested arrays
# if there are an odd number of elements the middle element
# should go in the first array

def halvsies(array)
  array.partition do |i|
    p array.index(i) < (array.count / 2.0).ceil
  end
end

# Launch School Solution
# def halvsies(array)
#   middle = (array.size / 2.0).ceil
#   first_half = array.slice(0, middle)
#   second_half = array.slice(middle, array.size - middle)
#   [first_half, second_half]
# end



# p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# p halvsies([5]) == [[5], []]
# p halvsies([]) == [[], []]
p halvsies([1, 2, 3, 4, 55, 22, 31, 55, 31, 55, 22, 9, 10])
