# Write a program that asks the user to enter an integer
# then asks if the user wants to determine the sum
# or product of all number between 1 and the entered integer


def calculator(int, operator)
  arr = []

  int.times { | i | arr << i + 1 }

  if operator == 's'
    puts "The sum of the integers between #{arr[0]} and #{arr.last} is #{arr.sum}"
  elsif operator == 'p'
    puts "The product of the integers between #{arr[0]} and #{arr.last} is #{arr.inject(:*)}"
  end

end
  





puts "Please enter an integer greater than 0:"
  int = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product"
  operator = gets.chomp

puts calculator(int, operator)

