# write a recursive method that returns the nth number of a sequence
# 1. They call themselves at least once;
# 2. They have a condition that stops the recursion (n ==1 above);
# 3. They use the result return by themselves.

def fibonacci(n)
  if n < 2
    n
  else
    fibonacci(n-1) + fibonacci(n-2)
  end
end

p fibonacci(5)
p fibonacci(10)

