# write a method that takes an array and
# (a) calculates the product of the elements
# (b) divides the product by the number of elements
# (c) returns the number to 3 decimal places

# def show_multiplicative_average(array)
#   divisor = array.count
#   product = [1.0]

#   array.each_with_object(product) do | num, product |
#     product[0] *= num
#   end

#   format("%.3f", product[0]/divisor)

# end


# Launch School Solution
def show_multiplicative_average(numbers)
  product = 1.to_f
  numbers.each { |number| product *= number }
  average = product / numbers.size
  puts "The result is #{format('%.3f', average)}"
end


# Solution using inject
# frozen_string_literal: true

# def show_multiplicative_average(array_of_num)
#   average = array_of_num.inject(:*).to_f / array_of_num.size

#   puts "The result is #{format('%.3f', average)}"
# end



p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667