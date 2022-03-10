# create method that takes and multplies 2 numbers

def multiply(num1, num2)
  num1 * num2
end

puts "Please enter the first number to multiply"
num1 = gets.chomp.to_i

puts  "Please enter the second number to multiply"
num2 = gets.chomp.to_i

puts "multiply(#{num1},#{num2}) == #{multiply(num1, num2)}"
