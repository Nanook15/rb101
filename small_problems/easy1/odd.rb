# write a method that takes 1 integer (which may be +ve or -ve or zero)
# This method returns true if the numbers absolute value is odd
# you may assume the integer argument is a valid integer value
# you are not allowed to use #odd? or #even? in the solution

def is_odd?(int)
  int % 2 != 0 
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

