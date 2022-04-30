# identify all the palindromes using the previous methods 
# exceptions : palindromes are case sensitive
# exceptions : palindromes include non-word characters
# exceptions : single characters are not palindromes


def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end


def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

def palindromes(string)
  palindrome_array = []
  
  substrings(string).select do | potential_palindrome |
    potential_palindrome.downcase!
    potential_palindrome.delete! "^A-Za-z0-9"
    if potential_palindrome.size > 1 && potential_palindrome == potential_palindrome.reverse
      palindrome_array << potential_palindrome
    end
  end

  palindrome_array
end

# def leading_substrings(string)
#   (0..string.size - 1).map { |i| string[0..i].downcase.gsub(/[^0-9a-z ]/,'')}
# end

# def substrings(str)
#   (0...str.size).map { |i| leading_substrings(str[i..-1]) }.flatten
# end

# def palindromes(string)
#   substrings(string).select{|str| str if str == str.reverse && str.size > 1}
# end




# p palindromes('abcd') == []
# p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-mAdam-did-madam-goodbye') #== [
  #  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  #   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  #   '-madam-', 'madam', 'ada', 'oo'
  # ]
# p palindromes('knitting cassettes') == [
#    'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
#  ]
p palindromes('hello-mAdam-did-madam-goodbye') == ["ll", "madam", "madam", "madamdidmadam", "madamdidmadam", "madam", "madam", "madamdidmadam", "madamdidmadam", "ada", "adamdidmada", "damdidmad", "amdidma", "mdidm", "did", "did", "did", "did", "madam", "madam", "madam", "madam", "ada", "oo"]