def reverse_words(words)

  reversed = words.split
    reversed.each do |i|
      if i.length >= 5 
       i.reverse!
    end
  end

  reversed.join(' ')

end



puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end