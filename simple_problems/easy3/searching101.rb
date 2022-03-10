# take 5 number and place them in an array
# take a 6th number and check whether that number exists within an array

def array_search(array, query)
  array.include?(query)
end

def prompt(string)
  puts "==> #{string}"
end

numbers = []
round = %w(first second third fourth fifth)

until numbers.size == 5
  round.each do | turn |
    prompt("Please insert the #{turn} integer")
    numbers << gets.chomp.to_i
  end
end

prompt("What integer would you like to search for")
  query = gets.chomp.to_i

if array_search(numbers, query) == true
  puts "The number #{query} does appear in #{numbers}"
else 
  puts "The number #{query} does not appear in #{numbers}"
end