# write a method that returns true if the string passed
# as a argument is an palindrome

# def palindrome?(string)
#   string == string.reverse
# end

def palindrome_array?(array)
    array == array.reverse 
end


p palindrome_array?('madam') == true
p palindrome_array?('Madam') == false          # (case matters)
p palindrome_array?("madam i'm adam") == false # (all characters matter)
p palindrome_array?('356653') == true
p palindrome_array?(['dog', 'cat', 'dog']) == true
p palindrome_array?(['mouse', 'cat', 'dog']) == false