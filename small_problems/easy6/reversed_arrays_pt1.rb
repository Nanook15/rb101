


def reversed_array(array)
  counter = array.size
  array2 = array

  loop do 
    break if counter == 0
    array[array.size - counter] = array2[counter - 1]
    counter -= 1
  end
    
    array

end

# # Launch School Solution
# def reverse!(array)
#   left_index = 0
#   right_index = -1

#   while left_index < array.size / 2
#     array[left_index], array[right_index] = array[right_index], array[left_index]
#     left_index += 1
#     right_index -= 1
#   end

#   array
# end


list = %w(a b e d c)

p reversed_array(list)
p list.object_id == reversed_array(list).object_id
