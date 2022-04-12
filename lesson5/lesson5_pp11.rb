# Given the following data structure use a combination of methods, including 
# either #select or #reject method, to return a new array identical in struct to 
# the originally but containing integers that are multiples of 3 


arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

result = arr.map do |array|
  array.select do |element|
    element % 3 == 0
  end
end

p result

