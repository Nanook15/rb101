# Write a method that calculates and returns the index of the first 
#Fibonacci number that has the number of digits specified as an argument. 


# index 
# array 

def find_fibonacci_index_by_length(length)
  arr = [1, 1]
  fib_array = []

  until fib_array.last.to_s.size == length
    arr[2] = arr[0] + arr[1]
    fib_array << arr.shift
  end
  index = fib_array.rindex(fib_array.last) + 1
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p  find_fibonacci_index_by_length(10) == 45
p  find_fibonacci_index_by_length(100) == 476
p  find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847