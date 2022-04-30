# Write a method that takes an array of numbers
# and returns the sum of each leading subsequence for that array
# assume that the Array always contains at least one number

def sum_of_sums(array)
  sum_total = 0

  array.each_with_object([]) do | num, arr |
    arr << num
    sum_total += arr.sum
  end

  sum_total
end 

or

def sum_of_sums(array)
  sum_total = [0]

  array.each_with_object([]) do | num, arr |
    arr << num
    sum_total << arr.sum
  end

  sum_total.sum
end 



# Launch School Solution 1
def sum_of_sums(numbers)
  sum_total = 0
  accumulator = 0

  numbers.each do |num|
    accumulator += num
    sum_total += accumulator
  end

  sum_total
end


# Launch School Solution 2
def sum_of_sums(numbers)
  sum_total = 0
  1.upto(numbers.size) do |count|
    sum_total += numbers.slice(0, count).reduce(:+)
  end
  sum_total
end

  



p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35