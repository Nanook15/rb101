# write a method that returns an array from 1 to the given number

# def sequence(num)
#   result = []
#   1.upto(num).each do | num |
#     result << num
#   end
#   result
# end

def sequence(num)

  num > 0 ? (1..num).to_a : (num..0).to_a
end

# p sequence(5) == [1, 2, 3, 4, 5]
# p sequence(3) == [1, 2, 3]
# p sequence(1) == [1]
p sequence(-1)
p sequence(-15)