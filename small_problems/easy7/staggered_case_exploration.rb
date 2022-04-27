# write a method that alternates the case of all the 
# characters in the string use a keyword argument to 
# defined whether the first letter is upcased or lowercase


# My solution with toggle
def staggered_case(string, state=true)
  result = [] 

  result = string.downcase.split('').each_with_index do | character, index |
    case 
    when state == true 
      character.capitalize! if index.even?
    when state == false
      character.capitalize! if index.odd?
    end 
  end

  result.join
end




# Launch School Solution with toggle

def staggered_case(string, state=true)
  result = ''
  need_upper = state

  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end


p staggered_case('I Love Launch School!', false)
p staggered_case('I Love Launch School!')
p staggered_case('ALL_CAPS', false)
p staggered_case('ALL_CAPS') 
p staggered_case('ignore 77 the 444 numbers', false)
p staggered_case('ignore 77 the 444 numbers')
