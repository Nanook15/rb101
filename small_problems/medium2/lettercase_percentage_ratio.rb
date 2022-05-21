# write a method that takes a string and stores in a hash the 
# percentage ratio of uppercase, lowercase and other chars in a string

def letter_percentages(string)
  result_hash = {}

  uppercase = string.count "A-Z"
  lowercase = string.count "a-z"
  neither = string.count "^A-Za-z"

  total = uppercase + lowercase + neither 
  
  result_hash[:lowercase] = (lowercase / total.to_f * 100).round(1)
  result_hash[:uppercase] = (uppercase / total.to_f * 100).round(1)
  result_hash[:neither] = (neither / total.to_f * 100).round(1)

  result_hash
end





p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI')