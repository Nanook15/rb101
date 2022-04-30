# write a method that takes 2 numbers representing the start and end of a sequence
# prints the numbers and if the number is divisible by 3 prints fizz or buzz if 5
# fizz buzz if divisible by 3 and 5.

def fizzbuzz(start, finish)
  
  start.upto(finish).each do | num |
    case
    when num % 5 == 0 && num % 3 == 0 
      puts "FizzBuzz"
    when num % 3 == 0
      puts "Fizz"
    when num % 5 == 0
      puts "Buzz"
    else 
      puts "#{num}"
    end
  end
end

# Launch School Solution

# def fizzbuzz(starting_number, ending_number)
#   result = []
#   starting_number.upto(ending_number) do |number|
#     result << fizzbuzz_value(number)
#   end
#   puts result.join(', ')
# end

# def fizzbuzz_value(number)
#   case
#   when number % 3 == 0 && number % 5 == 0
#     'FizzBuzz'
#   when number % 5 == 0
#     'Buzz'
#   when number % 3 == 0
#     'Fizz'
#   else
#     number
#   end
# end



fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz