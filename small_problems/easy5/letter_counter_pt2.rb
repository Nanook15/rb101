# adapt the #word_sizes method from letter_counter_pt1.rb
# so that it only countsa letter and not grammar

def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    
    counts[word.count "a-zA-Z"] += 1
    end
  counts
end



p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}