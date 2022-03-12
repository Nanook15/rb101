# Using String#slice! to return a section of string
# and see what String#slice method to returns 

advice = "Few things in life are as important as house training your pet dinosaur."

#advice.slice!("Few things in life are as important as ")

#p advice.slice("Few things in life are as important as ")

#puts advice

p advice.slice!(0, advice.index('house'))  # => "Few things in life are as important as "
p advice # => "house training your pet dinosaur."