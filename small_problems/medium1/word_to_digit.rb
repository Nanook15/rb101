# write a method that converts numbers to their digit equivalent

DIGITS = {
  'zero' => '0', 'one' => '1', 'two' => '2',
  'three' => '3', 'four' => '4', 'five' => '5',
  'six' => '6', 'seven' => '7', 'eight' => '8',
  'nine' => '9'
}.freeze

NUMBER = ["(", 0, 0, 0, ")", " ", 0, 0, 0, "-", 0, 0, 0, 0]

def word_to_digit(string)
  DIGITS.keys.each do |word|
    string.gsub!(/\b#{word}\b/, DIGITS[word])
  end

  string.gsub!(/(\d)(\s)/, '\1')
  string.gsub!(/(\d)([a-z])/i, '\1 \2')
  string.gsub(/(\d{3})(\d{3})(\d{4})/, '(\1) \2-\3')

end




p word_to_digit('Please call me at one two three four five six one two three four. Thanks.') # == 'Please call me at 5 5 5 1 2 3 4. Thanks.'