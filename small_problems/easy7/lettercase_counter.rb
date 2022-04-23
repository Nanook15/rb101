# write a method that analyses a string and returns
# a hash with the number of lowercase, uppercase and neither characters

def letter_case_count(string)
  hash = Hash.new(0)

  hash[:lowercase] = string.count "a-z"
  hash[:uppercase] = string.count "A-Z"
  hash[:neither] = string.count "^A-Z" "^a-z"

  hash 
end

# Launch School Solutions:

# UPPERCASE_CHARS = ('A'..'Z').to_a
# LOWERCASE_CHARS = ('a'..'z').to_a

# def letter_case_count(string)
#   counts = { lowercase: 0, uppercase: 0, neither: 0 }

#   string.chars.each do |char|
#     if UPPERCASE_CHARS.include?(char)
#       counts[:uppercase] += 1
#     elsif LOWERCASE_CHARS.include?(char)
#       counts[:lowercase] += 1
#     else
#       counts[:neither] += 1
#     end
#   end

#   counts
# end



# def letter_case_count(string)
#   counts = {}
#   characters = string.chars
#   counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
#   counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
#   counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
#   counts
# end



p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }