# Write a method that takes 1 argument, a positive integer,
# and returns a string of alternating 1s and 0s starting with 1
# length of string should match the given integer

def stringy(int)
 [1, 0].cycle.first(int).join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# Launch School Version
# def stringy(size)
#   numbers = []

#   size.times do |index|
#     number = index.even? ? 1 : 0
#     numbers << number
#   end

#   numbers.join
# end