# swap the first and last letter of a each word
# assume there is always one word
# assume each word is a least 1 letter


# def swap(str)
#   words = str.split(' ')
#   swapped_sentence = []

#   words.map do | word |
#     first_letter = word[0]
#     last_letter = word[-1]
#     word[0] = last_letter
#     word[-1] = first_letter
#     swapped_sentence << word
#   end
#   swapped_sentence.join(' ')
# end

def swap(str)
  words = str.split(' ')
  swapped_sentence = []

  words.map do | word |
    word[0], word[-1] = word[-1], word[0]
    swapped_sentence << word
  end
  swapped_sentence.join(' ')
end






# Launch School Solution
# def swap_first_last_characters(word)
#   word[0], word[-1] = word[-1], word[0]
#   word
# end

# def swap(words)
#   result = words.split.map do |word|
#     swap_first_last_characters(word)
#   end
#   result.join(' ')
# end




p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

