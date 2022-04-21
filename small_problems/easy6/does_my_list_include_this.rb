# write a method that takes an array nd a search value
# method return true if value is in the array, false if not
# you may not use array#include? in the solution

def include?(array, value)
  array.each_with_object(value) do | element, value |
    if element == value 
      return true
    else false
    end
  end
end




p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false