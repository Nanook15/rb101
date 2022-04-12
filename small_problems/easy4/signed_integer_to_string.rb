# you're going to extend that method by adding the ability to represent negative numbers as well.
# Write a method that takes an integer and converts it to a string representation.

def integer_to_string(int)
  int.digits.reverse!.join('')
end

# def signed_integer_to_string(integer)
#   if integer.positive?
#     "+#{integer_to_string(integer)}"
#   elsif integer == 0
#     return '0'
#   else
#     "-#{integer_to_string(0-integer)}"
#   end
# end

# Launch School Solution

# def signed_integer_to_string(number)
#   case number <=> 0
#   when -1 then "-#{integer_to_string(-number)}"
#   when +1 then "+#{integer_to_string(number)}"
#   else         integer_to_string(number)
#   end
# end

# DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

# def integer_to_string(number)
#   result = ''
#   loop do
#     number, remainder = number.divmod(10)
#     result.prepend(DIGITS[remainder])
#     break if number == 0
#   end
#   result
# end

def integer_to_string(int)
  int.digits.reverse!.join('')
end

def signed_integer_to_string(integer)
  
  case 
    when integer.negative?
      operator = '-'
    when integer.positive?
      operator = '+'
    else 
      operator = '' 
    end 

  "#{operator}#{integer_to_string(integer.abs)}"
end


p signed_integer_to_string(4321) #== '+4321'
p signed_integer_to_string(-123) #== '-123'
p signed_integer_to_string(0) #== '0'