# write a method that takes a string and returns true if all upper case
# returns false if not. ignores non alphabetic characters

def uppercase?(string)
  string == string.upcase
end





p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true