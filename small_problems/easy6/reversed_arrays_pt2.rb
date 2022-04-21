# reverse the arrray content without using Array#reverse or Array#reversed!
# or the method created in reversed_arrays_pt1.rb without modifying the original 

def reverse(array)
  new_array = []
  array = array.dup

  while array.size > 0
    new_array << array.pop
  end
  
  new_array
end

# Launch School Solution
# def reverse(array)
#   result_array = []
#   array.reverse_each { |element| result_array << element }
#   result_array
# end


p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true