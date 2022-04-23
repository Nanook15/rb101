# write a method that capitalises each word in a given string

def word_cap(string)

  arr1 = string.split.map do | word |
    word.capitalize
  end
  
  arr1.join(' ')

end

#More Succinct Version

def word_cap(words)
  words.split.map(&:capitalize).join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'