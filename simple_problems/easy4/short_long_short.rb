# Write a method that takes two strings as arguments, 
# determines the longest of the two strings,
# returns the result of concatenating the shorter string, the longer string, and the shorter string once again. 
# You may assume that the strings are of different lengths.

def short_long_short(string_1, string_2)
  if
    string_1.size < string_2.size
    string_1 + string_2 + string_1
  else
    string_2 + string_1 + string_2
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"


# alternative (more lengthy and complex)

#def short_long_short(string1, string2)
#  arr = [string1, string2].sort_by { |el| el.length }
#  arr.first + arr.last + arr.first
#end