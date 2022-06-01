# Write a method that computes the difference between the square 
# of the sum of the first n positive integers 
# and the sum of the squares of the first n positive integers.


def sum_square_difference(integer)
  sum_squared = []
  square_sum = []

  1.upto(integer) do |base| 
    sum_squared << base
    square_sum << base ** 2
  end
  sum_squared.sum ** 2 - square_sum.sum 
end

def sum_square_difference(n)
  nums = (1..n).to_a
  (nums.sum)**2 - nums.map{|num| num**2}.sum
end


p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150