# Write a method that takes an integer and returns
# the next featured number. Rules for next number
# (a) Divisible by 7
# (b) odd
# (c) does not contain 2 of the same digits


# PEDAC
# (a) Take number and divide by 7 
# (b) Add one to number * 7 and then validate
# 	- is it odd - use #odd?
# 	- are digits unique -  integer, to string, split, uniq, join, to_i == integer
# (c) if true return number
# (d) if false repeat the loop after adding one to the base multiplicand number

def valid_num(new_num, new_num_size)
  if new_num_size > 11
    return 'Invalid Number'
  else
    new_num
  end
end


def featured(num)
  base = num / 7
  new_num = 0
  new_num_size = 0

  loop do 
    new_num = (base + 1) * 7
    test_num = new_num.to_s.split('').uniq.join.to_i
    new_num_size = new_num.to_s.split('').size
    break if test_num == new_num && new_num.odd? || new_num_size > 11
    base +=1
  end
  valid_num(new_num, new_num_size)
end


# p featured(12) == 21
# p featured(20) == 21
# p featured(21) == 35
# p featured(997) == 1029
# p featured(1029) == 1043
# p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

# p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements