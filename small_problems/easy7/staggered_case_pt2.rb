# create a method that will alternate a character's case
# but that ignores all non-alphebtic characters 


def staggered_case(string, state=true, alphas=false)
  result = ''
  need_upper = state
  
  case
  when alphas == false
    string.chars.each do |char|
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper if char =~ /[a-z]/i
    end
  when alphas == true
    string.chars.each do |char|
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
        need_upper = !need_upper
    end
  end

  result
end


p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('I Love Launch School!', false, true) == 'i lOvE LaUnCh sChOoL!'
p staggered_case('I Love Launch School!', true, true) == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'


TEXT1 = "red fish\nblue fish"
puts "matched red" if TEXT1.match(/^red/)
puts "matched blue" if TEXT1.match(/^blue/)