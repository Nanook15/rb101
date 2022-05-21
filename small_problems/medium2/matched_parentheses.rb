# write a method that returns true if there are matching sets of 
# parentheses and false if not. 


def paired?(collection)
   collection.join('').match?(/\A(?<paren>\(\g<paren>*\))*\z/)
end

def balanced?(string)
  collection = []

  string.chars.each do |bracket|
    if bracket == '(' || bracket == ')'
      collection << bracket
    end
  end

  paired?(collection)
end




p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false