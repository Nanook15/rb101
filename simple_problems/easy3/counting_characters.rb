# ask user for word or multiple words
# will return the number of characters, not including white spaces

puts "Please write a word or multiple words : "
  string = gets.chomp

arr = string.chars
arr.delete(" ")

puts "There are #{arr.size} characters in \"#{string}\"."
