# create method that swaps string case without using the String#swapcase method

def swapcase(string)
  result = []

  result = string.split('').each do | character |
    case 
    when character =~ /[a-z]/
      character.upcase!
    when character =~ /[A-Z]/
      character.downcase!  
    end
  end 
  result.join
end


p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'