# capitalize each word in a string without using #capitlize

ALPHA_ARRAY = ("A".."Z").to_a

def word_cap(string)
  result = []

  string.split.map do | word |
    ALPHA_ARRAY.each do | letter |
      if word[0] == letter.downcase
          word[0] = letter
          result << word
      elsif word[0] != word.downcase
          result << word
      end
    end
  end
  result.uniq.join(' ')
end





  p word_cap('four score and seven') #== 'Four Score And Seven'
  p word_cap('the javaScript language') #== 'The Javascript Language'
  p word_cap('this is a "quoted" word') #== 'This Is A "quoted" Word'