# write a program that prompts the user for 2 positive 
# integers. then prints the result of those following 
# operations on those two numbers: addition, subtraction,
# product, quotient, remainder and power.

puts "Enter the first number:"
  num1 = gets.chomp.to_i

puts "Enter the second number:"
  num2 = gets.chomp.to_i

puts "==>#{num1} + #{num2} = #{num1 + num2}"
puts "==>#{num1} - #{num2} = #{num1 - num2}"
puts "==>#{num1} * #{num2} = #{num1 * num2}"
puts "==>#{num1} / #{num2} = #{num1 / num2}"
puts "==>#{num1} % #{num2} = #{num1 % num2}"
puts "==>#{num1} ** #{num2} = #{num1 ** num2}"
