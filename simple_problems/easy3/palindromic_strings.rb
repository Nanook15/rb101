# returns true if pass string is a palindrome
# returns true if pass array that is a palindrome
# returns true if passed array or string that is a palindrome

def palindrome?(string)
  string == string.reverse
end

#def palindrome?(array)
#  array == array.reverse
#end

#def real_palindrome?(array)
#  array.downcase!
#  array.gsub!(/[^a-z0-9]/i, '')
#  array == array.reverse
#end

def real_palindrome?(string)
    string = string.downcase.delete('^a-z0-9')
    string == string.reverse
end


#puts palindrome?('Madam') == false          # (case matters)
#puts palindrome?('madam') == true
#puts palindrome?("madam i'm adam") == false # (all characters matter)
#puts palindrome?('356653') == true

#puts palindrome?([1, 2, 3, 4, 5, 4, 3, 2, 1]) == true
#puts palindrome?(['M','a', 'd','a','m']) == false          # (case matters)
#puts palindrome?(['m', 'a', 'd', 'a', 'm', 'i', "'", 'm', 'a', 'd', 'a', 'm']) == false # (all characters matter)
#puts palindrome?(['356653']) == true
#puts palindrome?(['dog', 'cat']) == false

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false
