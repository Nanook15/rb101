# write a method that doubles every char in a string

def repeater(string)
  result = ''

  string.chars.each do |char|
    result << char * 2
  end

  result
end



p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''