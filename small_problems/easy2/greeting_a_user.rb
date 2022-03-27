# Write a program that will ask for a user's name
# The program will greet the user
# If the user writes "name!" then yell back at the user



puts "What is your name?"
  name = gets.chomp

if name.end_with?('!')
  puts "HELLO #{name.upcase}! WHY ARE WE SCREAMING?"
else 
  puts "Hello #{name}."
end


