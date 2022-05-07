# write a method that performs maximum rotation of a number
# ensure it handles multiple consecutive zeros

require "pry"

def max_rotation(integer)
  array = integer.to_s.chars
  n = 0

  loop do 
    break if n == array.size - 1
    array[n..-1] = array[n..-1].rotate(1)
    n += 1
  end
  array.join.to_i
end







p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(30005) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845