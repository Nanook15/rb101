# write a method that takes one string of one or more words
# returns the given string with words of five or more characters
# reversed

def reverse_words(string)
  to_reverse = string.split

  to_reverse.each do | word |
    word.reverse! if word.size >= 5
  end

  to_reverse.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS