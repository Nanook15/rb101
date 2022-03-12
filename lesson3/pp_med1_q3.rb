def factors(number)
  divisor = number
  factors = []

  while divisor > 0
    number % divisor == 0 ?
      factors << divisor : nil
    divisor -=1
  end
  factors
end

while divisor > 0
  factors << number / divisor if number % divisor == 0
  divisor -= 1
end

p factors(10)

