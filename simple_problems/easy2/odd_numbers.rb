# print all odd numbers in the range 0 - 99 inclusive
# each number is to go on a fresh line

array = (0..99).to_a

puts array.select { | i | i.odd? }

