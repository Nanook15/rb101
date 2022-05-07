# Write a method to perform the maximum rotation of an integer
# using the methods from the previous exercises. 

require "pry"

def rotate_array(array)
  array[1..-1] + [array[0]]
end


def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[n..-1] = rotate_array(all_digits[n..-1])
  all_digits.join.to_i
end

def max_rotation(value)
  loops = value.digits.size
  count = 0
  n = 0

  loop do
    break if count == loops - 1

    value = rotate_rightmost_digits(value, n)
  
    n += 1
    count += 1
  end
  value
end



# p max_rotation(735291) == 321579
# p max_rotation(3) == 3
# p max_rotation(35) == 53
p max_rotation(105) #== 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) == 7_321_609_845