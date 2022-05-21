# write a method that returns true if there are matching sets of 
# either (),{},[],'' or ""


# def paired?(collection)
#   collection = collection.join('')
#   p collection

#   case 
#   when collection.include?('(')
#     collection.match?(/\A(?<paren>\(.*\g<paren>*\))*\z/)
#   when collection.include?('{')
#     collection.match?(/\A(?<paren>\{.*\g<paren>*\})*\z/)
#   when collection.include?('[')
#     collection.match?(/\A(?<paren>\[.*\g<paren>*\])*\z/)
#   when collection.include?("'")
#     collection.match?(/\A(?<paren>\'.*\g<paren>*\')*\z/)
#   when collection.include?("\"")
#     collection.match?(/\A(?<paren>\".*\g<paren>*\")*\z/)
#   else
#     false
#   end
# end

# def balanced?(string)
#  collection = []

#  string.chars.each do |bracket|
#   case
#   when bracket == '(' || bracket == ')'
#     collection << bracket
#   when bracket == '{' || bracket == '}'
#     collection << bracket
#   when bracket == '[' || bracket == ']'
#     collection << bracket
#   when bracket == "'" || bracket == "'"
#     collection << bracket
#   when bracket == "\"" || bracket == "\""
#     collection << bracket
#   end
#  end

#  paired?(collection)
# end


def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '(' 
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end




p balanced?('()()()')
p balanced?('{}{}{}')
p balanced?('[][][]')
p balanced?("''''''")
p balanced?("\"\"\"\"")
p balanced?(')(')
p balanced?('}{')
p balanced?('][')
p balanced?("'")
p balanced?("\"")
p balanced?('(){}[]')
p balanced?("\"\"'")

