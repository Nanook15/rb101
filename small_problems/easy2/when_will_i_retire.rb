# Build a program that displays when the user will retire
# and how many years she has to work until retirement

require 'time'

def retire_calc(age, retirement_age)
  puts "It's #{Time.new.year}. You will retire in #{Time.new.year + (retirement_age - age)}.
  You only have #{retirement_age - age} years of work to go!"
end


puts "What is your age in years?"
  age = gets.chomp.to_i

puts "At what age would you like to retire?"
  retirement_age = gets.chomp.to_i


retire_calc(age, retirement_age)