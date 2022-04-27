# write a method that returns the penultimate word
# in the string passed to it. words are any sequence of
# non-blank characters & you may assume the input string
# will always contain 2 words.


def penultimate(string)
  string = string.split(' ')
  string[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'