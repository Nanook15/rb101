# combine two non-empty arrays of equal size so 
# that the elements appear in alternation

# def interleave(arr1, arr2)
#   index = 1

#   arr2.each_with_object(arr1) do | element, array |
#     array.insert(index, element) 
#     index += 2
#   end
# end

# def interleave(arr1, arr2)
#   position = 1

#   arr2.each do | element |
#     arr1.insert(position, element) 
#     position += 2
#   end
#   arr1
# end

# Launch School Solution
# def interleave(array1, array2)
#   result = []
#   array1.each_with_index do |element, index|
#     result << element << array2[index]
#   end
#   result
# end


#further exploration

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']