# Update double numbers method so it takes any factor


# def double_numbers(numbers)
#   doubled_numbers = []
#   counter = 0

#   loop do
#     break if counter == numbers.size

#     current_number = numbers[counter]
#     doubled_numbers << current_number * 2

#     counter += 1
#   end

#   doubled_numbers
# end


def multiply(numbers, factor)
  multiplied_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    multiplied_numbers << (current_number * factor)

    counter += 1
  end

  multiplied_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 10) # => [3, 12, 9, 21, 6, 18]