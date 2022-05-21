# rewrite the fibonacci method procedurally


def fibonacci(num)
  array = [1, 1]
  counter = 0

  loop do 
    break if array.size == num
    array << array[counter] + array[counter + 1]
    counter +=1
  end
  array[-1]
end





p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501