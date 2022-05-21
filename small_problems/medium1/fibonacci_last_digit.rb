# write a method that returns the last digit of a fibonnaci sequence

# def fibonacci_last(nth)
#   last_2 = [1, 1]
#   3.upto(nth) do
#     last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
#   end

#   last_2.last
# end

# Further exploration
def fibonacci_last_fast(n)
  fibonacci_repeating_sequence = determine_fibonacci_repeating_sequence
  index = (n - 1) % fibonacci_repeating_sequence.length
  fibonacci_repeating_sequence[index]
end

# Determine the repeated pattern in the fibonacci sequence
def determine_fibonacci_repeating_sequence
  last_digits = [1, 1]
  loop do
    next_last_digit = (last_digits[-2] + last_digits[-1]) % 10

    # If this condition is met, we know that the pattern will begin repeating
    if last_digits[-1] == last_digits[0] && next_last_digit == last_digits[1]
      return last_digits[0..-2]
    else
      last_digits << next_last_digit
    end
  end
end



p fibonacci_last_fast(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last_fast(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last_fast(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last_fast(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last_fast(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last_fast(123456789) # -> 4
p fibonacci_last_fast(123_456_789_987_745) # -> 5