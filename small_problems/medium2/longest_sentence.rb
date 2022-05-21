# write a method to find the long sentence in a text file


file_data = File.read("long_sentence.txt")

def longest_sentence(text)
  hash_of_string = {}

  text.split(/(?<=[\.|\!|\?])/).each do |sentence|
    if sentence.size > 1
      hash_of_string[sentence] = sentence.split(' ').size
    end
  end
  puts hash_of_string.max_by{|_,v| v}
end 


longest_sentence(file_data)

