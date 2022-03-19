# Use next and modify the following code
# So that it only prints even numbers

# number = 0

# until number == 10
#   number += 1
#   puts number
# end

number = 0

until number == 10
  number += 1
  if number.odd?
    next
  else
  puts number
  end
end

# Launch School Solution

# number = 0

# until number == 10
#   number += 1
#   next if number.odd?
#   puts number
# end
