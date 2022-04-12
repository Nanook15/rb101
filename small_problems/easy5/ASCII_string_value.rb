# Write a method that determines & returns the ASCII string
# value that is passed in as an argument. The ASCII string value is
# the sum of the ASCII values of every character in the string.
# (You may use String#ord) to determine the ASCII value of a character


def ascii_value(string)
  array = string.split('')
  ascii_num = []

  array.map do | str |
    ascii_num << str.ord
  end
  ascii_num.sum
end

# Launch School Solution

# def ascii_value(string)
#   sum = 0
#   string.each_char { |char| sum += char.ord }
#   sum
# end


p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0