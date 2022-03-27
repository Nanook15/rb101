# write a program that will ask user to input words
# and give back the number of characters. Spaces not counted

array = []

puts "Please enter a word or multiple words:"
  string = gets.chomp

puts "There are #{string.split.join.size} characters in \"#{string}\""

