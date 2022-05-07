# Write a method to perform the maximum rotation of an integer
# using the methods from the previous exercises. 

require "pry"

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number
  all_digits[n..-1] = rotate_array(all_digits[n..-1])
  all_digits
end

def max_rotation(value)
  n = 0
  value = value.to_s.chars

  loop do
    break if n == value.size - 1
    value = rotate_rightmost_digits(value, n)
    n += 1
  end
  value.join.to_i
end



p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845