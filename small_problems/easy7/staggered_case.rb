# write a method that staggers the case of all the characters in the string

def staggered_case(string)
  result = [] 

  result = string.downcase.split('').each_with_index do | character, index |
    if index.even?
      character.capitalize!
    end 
  end

  result.join
end


# Launch School Solution

# def staggered_case(string)
#   result = ''
#   need_upper = true
#   string.chars.each do |char|
#     if need_upper
#       result += char.upcase
#     else
#       result += char.downcase
#     end
#     need_upper = !need_upper
#   end
#   result
# end




p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'