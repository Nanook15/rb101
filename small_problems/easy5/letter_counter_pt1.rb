# count the number of letters in each word
# count the number of words with the same number of letters
# return  hash wih the size as the key and number of occurrences as the value

#Solution
# split the string at white space
# count chars in each string to create a hash with key = size & value == 1
# each time there is another string of same size, increment value by 1

# def word_sizes(string)
#   arr_string = string.split(' ')
#   hash = {}

#   arr_string.map do |word|
#     if hash.key?(word.size)
#       hash[word.size] += 1
#     else
#       hash[word.size] = 1
#     end
#   end
#   hash 
# end



def word_sizes(string)
  hash = {}

  string.split(' ').map do |word|
    if hash.key?(word.size)
      hash[word.size] += 1
    else
      hash[word.size] = 1
    end
  end
  hash 
end

# Launch School Solution

# def word_sizes(words_string)
#   counts = Hash.new(0)
#   words_string.split.each do |word|
#     counts[word.size] += 1
#   end
#   counts
# end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}