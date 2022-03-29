# write a method that searches for all multiples of 3 and 5
# that lie between 1 and some other number & then computes the sum of those numbers
# you may assume the number pass in is an integer greater than 1\
# example For instance, if the supplied number is 20, 
# the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# input: integer
# output : integer 

# write a method that takes an integer
# integer / number  = number of calculations
# integer * number of calculations 
# sum calculations


def multisum(int)
  counter_by_3 = int / 3
  counter_by_5 = int / 5
  array = []
  
  loop do 
    break if counter_by_3 == 0
    array << counter_by_3 * 3
    counter_by_3 -= 1
  end
   
  loop do 
    break if counter_by_5 == 0
    array << counter_by_5 * 5
    counter_by_5 -= 1
  end
  
  array.uniq!

  array.sum

end



p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(20) == 98
p multisum(1000) == 234168