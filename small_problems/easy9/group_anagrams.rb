# write a method that takes an array of words and sorts the words into arrays of anagrams

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']


def word_tester(words)
  result = words.map do | word |
    words.select do | test_word |
      if test_word.match(/[#{word}][#{word}][#{word}][#{word}]/)
        [] << test_word
      end
    end
  end
  result.uniq
end

def word_sorter(words)
  sorted_words = word_tester(words)

  sorted_words.each do |array_of_words|
    p array_of_words
  end
end

word_sorter(words)



# Launch School Solution
# result = {}
# words.each do |word|
#   key = word.split('').sort.join
#   if result.has_key?(key)
#     result[key].push(word)
#   else
#     result[key] = [word]
#   end
# end
# result.each_value do |v|
#   puts "------"
#   p v
# end