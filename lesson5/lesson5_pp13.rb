# Given the following data structure, return a new array returning 
# the same sub-arrays as the original but ordered logically by only 
# taking into consideration the odd number they contain.

arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

result = arr.sort_by do |array|
          array.select do |element|
            element.odd?
          end
        end

p result

