# write a program that solicits 6 numbers form the user
# that then prints a message that describes whether
#the 6th number appears in the first number

numbers = []
counter = 0
suffix = ["1st", "2nd", "3rd", "4th", "5th"]

loop do
  puts "==> Enter the #{suffix[counter]} number:"
    numbers << gets.chomp.to_i
  counter += 1
  break if counter == 5
end 
  
puts "==> Enter the last number:"
  last_num = gets.chomp.to_i

if numbers.include?(last_num)
  puts "The number #{last_num} apears in #{numbers}"
else
  puts "The number #{last_num} does not apear in #{numbers}"
end