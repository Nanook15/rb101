# write a method that moves the first element of an array to the last
# does not use the method Array#rotate or #Array#rotate!


# def rotate_array(array)
#   array.each_with_index do | element, index |
#     if index == 0
#       array << element
#     end
#   end
# end

def rotate_array(array)
  working_array = array.dup

  working_array.push(working_array.shift)
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true