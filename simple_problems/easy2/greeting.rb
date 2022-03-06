# greets user
# if user types their name ending in !, the programme will return a different message

puts "What is your name? : "
  name = gets.chomp 



if name.end_with?("!")
  name.chop!
  puts "HI #{name.upcase} WHY ARE WE SCREAMING!!?"
else  
  puts "Hi #{name}, how are you doing today?"
end  
