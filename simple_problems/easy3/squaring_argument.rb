# create method that takes 2 numbers and 

def multiply(num1, num2)
  num1 * num2
end

puts "Please enter the number"
base = gets.chomp.to_i

puts "Please enter the factor"
factor = gets.chomp.to_i

until factor == 1
  sum = multiply(sum, base)
  factor -= 1
end






