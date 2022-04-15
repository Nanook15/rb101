# take a string of lower cased characters &
# remove all non-alphanumeric characters
# replaced by spaces
# if more than 1 non-alphanumeric character occurs in a 
#  you should only return one space

def cleanup(string)
  string.tr_s('^a-z', ' ')
end

# #Launch School Solution 1
# ALPHABET = ('a'..'z').to_a

# def cleanup(text)
#   clean_chars = []

#   text.chars.each do |char|
#     if ALPHABET.include?(char)
#       clean_chars << char
#     else
#       clean_chars << ' ' unless clean_chars.last == ' '
#     end
#   end

#   clean_chars.join
# end


# #Launch School Solution 2
# def cleanup(text)
#   text.gsub(/[^a-z]/, ' ').squeeze(' ')
# end

a_string = "---what's my +*& line?"

p cleanup(a_string) == ' what s my line '

p a_string