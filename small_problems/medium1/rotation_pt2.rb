# write a method that can rotate the last n digits of a number


# def rotate_rightmost_digits(integer, n)
#   array = integer.digits.reverse
#   num_to_push = array[-n]

#   array.delete_at(-n)
#   array.push(num_to_push).join.to_i

# end

require "pry"

def rotate_array(array)
  array[1..-1] + [array[0]]
end

# Launch School Solution
def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  binding.pry
  all_digits.join.to_i
end




p rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219
# p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
# p rotate_rightmost_digits(735291, 5) == 752913
# p rotate_rightmost_digits(735291, 6) == 352917