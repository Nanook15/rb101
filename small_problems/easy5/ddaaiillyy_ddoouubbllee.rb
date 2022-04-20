# remove duplicate characters


# def crunch(string)
#   result = []
#   counter = 0 

#   string.split('').each do | char |
#     if char != result[counter - 1]
#       result << char
#       counter += 1
#     end
#   end
#   result.join
# end


# # Launch School Solution
# def crunch(text)
#   index = 0
#   crunch_text = ''
#   while index <= text.length - 1
#     crunch_text << text[index] unless text[index] == text[index - 1]
#     index += 1
#   end
#   crunch_text
# end


def crunch(string)
  result = []
  counter = 0 

  p string.chars
  

  
end

p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
p crunch('4444abcabccba') #== '4abcabcba'
p crunch('ggggggggggggggg') #== 'g'
p crunch('a') #== 'a'
p crunch('') #== ''