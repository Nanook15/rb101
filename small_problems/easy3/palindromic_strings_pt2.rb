# write a method that returns true 
# if string is a palindrome
# however method must be case insensitive and should ignore
# all non_alphanumeric

def real_palindrome?(string)
   string = string.downcase.delete('^a-zA-Z0-9')
   string == string.reverse
end


p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") #== true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false