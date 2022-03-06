# build a program that randomly prints teddy's betwee 20 - 200
# uses the following text Teddy is 69 years old!
# asks the name of the user
# if no name given defaults to teddy

def how_old?(person = 'Teddy')

    "#{person} is #{rand(20..200)} years old!"

end

puts('What is your name? : ')
  name = gets().chomp()

if name == ""
  puts how_old?()
else 
  puts how_old?(name)
end


