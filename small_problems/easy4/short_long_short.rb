# write a method that takes 2 string as arguments
# that concatenates the two strings, sandwiching 
# the longer string between the 2 shorter ones
# can asume the strings are 2 different legnths

def short_long_short(str1, str2)
  if str1.size > str2.size
    puts str2 + str1 + str2
  else
    puts str1 + str2 + str1 
  end
end

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"