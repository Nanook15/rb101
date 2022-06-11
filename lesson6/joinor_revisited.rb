# write a method joinor that returns the list of 
# remaining numbers in the tic tac toe programme
# with the final number separated by 'or'
# then apply the update to the TTT programme


def joinor(remaining_num, arg1=', ', arg2='or')
  case 
  when remaining_num.size == 1
    "#{remaining_num[0]}"
  when remaining_num.size == 2
    "#{remaining_num[0]} #{arg2} #{remaining_num[1]}"
  when remaining_num.size > 2
    "#{remaining_num[0..-2].join(arg1)} #{arg2} #{remaining_num[-1]}"
  end
end




p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"

