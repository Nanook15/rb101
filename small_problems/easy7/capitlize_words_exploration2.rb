# capitalize each word in a string without using #capitlize (2)


def word_cap(string)
  string.downcase!
  result = []

  result = string.split.map do | word |
    if word.start_with?(/[a-z]/)
      word[0].upcase! + word[1..]
    else
      word
    end
  end
  result.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'