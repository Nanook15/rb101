# if an input string is an IP address representing dot-separated numbers
# is an ip number? tests whether numbers are between 0 and 255 inclusive
# return a false condition
# returns invalid if there are less or more than 4 numbers

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")

  if dot_separated_words.size != 4
    return false
  end

  while dot_separated_words.size > 0 do
      word = dot_separated_words.pop
      return false unless is_an_ip_number?(word)
  end
  return true
end

def is_an_ip_number?(word)
  (0..255).include?(word.to_i)
end

p dot_separated_ip_address?("12.12.4.12")


