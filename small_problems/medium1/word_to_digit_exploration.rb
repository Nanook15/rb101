NUMBERS = {'zero' => "0", 'one' => "1", 'two' => "2", 'three' => "3", 'four' => "4", 'five' => "5", 'six' => "6", 'seven'=> "7", 'eight' => "8", 'nine' => "9"}

def word_to_digit(str)
  NUMBERS.each do |key, value|
    str.gsub!(key, value)
  end
  str
end

p word_to_digit('Please call me at one two three four five six one two three four. Thanks.')