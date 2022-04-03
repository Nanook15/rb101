# using each print out all vowels from the strings

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# array = []

# hsh.each do |key, value|
#   value.each do | word |
#     array = word.chars
#       array.each do |str|
#         if 'aeiouAEIOU'.include?(str)
#           puts str 
#         end
#       end
#   end
# end

#re-factored version

# hsh.each do |_, value|
#   value.each do |str|
#     str.chars.each do |letter|
#       if 'aeiouAEIOU'.include?(letter)
#         puts letter 
#       end
#     end
#   end
# end

#Launch School Solution 

vowels = 'aeiouAEIOU'

hsh.each do |_, value|
  value.each do |str|
    str.chars.each do |letter|
      if vowels.include?(letter)
        puts letter 
      end
    end
  end
end

