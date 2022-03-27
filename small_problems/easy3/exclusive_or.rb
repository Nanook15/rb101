# write a function name xor that evaluates two arguments
# and only returns "true" if one of the arguments is true

def xor?(arg1, arg2)
  (arg1 && arg2) != (arg1 || arg2)
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false