# return the middle word of the string and cover all edge cases

def middle_word(string)
  string_array = string.split(' ')
  centre = ((string_array.size / 2.0).round) - 1

  case
  when centre.even? && centre >= 0
    "#{string_array[centre]}"
  when centre.odd? && centre >= 0
    "#{string_array[centre]} #{string_array[centre +1]}"
  else centre == -1
    "Empty String"
  end
end




p middle_word('one two three four five')
p middle_word('one two three four')
p middle_word('one')
p middle_word(' ')