def leading_substrings(lead_string)
  elements = []
  sub_strings = []
  result = []

  lead_string.each do | letters |
    elements = letters.split('')
      1.upto(elements.size) do | length |
      sub_strings << elements.slice(0, length)
    end
  end

  sub_strings.each do | substring |
    result << substring.join
  end

  result
end

def substrings(string)
  counter = 0
  size = string.size
  shortened_string = []

  loop do 
    break if size == 0
    shortened_string << string[counter, size]
    counter += 1
    size -=1
  end

  leading_substrings(shortened_string)
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
