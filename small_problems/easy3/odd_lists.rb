# write a method that returns an array that contains
# every other element that is passed as an argument

# def oddities(array)
#   array.keep_if do | element |
#     array.index(element).even?
#     end
# end



# def oddities(array)
#   odd_indices = []
#   array.each_with_index do | element, i |
#     if i.even?
#        odd_indices << element
#     end
#   end
#   odd_indices
# end

def oddities(array)
  odd_indices = []
  index = 1

  while index < array.size
    odd_indices << array[index]
    index += 2
  end
  odd_indices
end


p oddities([2, 3, 4, 5, 6]) #== [2, 4, 6]
# p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# p oddities(['abc', 'def']) == ['abc']
# p oddities([123]) == [123]
# p oddities([]) == []