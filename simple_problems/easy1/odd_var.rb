# method returns true if absolute value of integer is odd 
#(without using odd?, even?, modulo or remainder)

def is_odd?(n)
  x = n/2
  x * 2 != n 
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true