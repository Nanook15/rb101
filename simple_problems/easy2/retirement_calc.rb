# Retirement calculator

require 'date'

date = Date.today


puts "What is your current age? :"
current_age = gets.chomp.to_i

puts "At what age would you like to retire? : "
retirement_age = gets.chomp.to_i  

retirement_date = date + ((retirement_age - current_age) * 365)

years_to_retire = retirement_age - current_age


puts "It's #{date.strftime('%Y')} and you will retire in #{retirement_date.strftime('%Y')}\n
You only have to work #{years_to_retire} of work to go!"




