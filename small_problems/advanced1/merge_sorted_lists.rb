# merge to arrages of sorted elements into one new array
# the elements in the final array should be sorted but you 
# cannot use any method that sorts the final array

def merge(arr1, arr2)
  result = []
  copy1 = arr1.dup
  copy2 = arr2.dup

  loop do 
    case
    when copy1.empty? && copy2.empty?
      break
    when copy1.empty? || copy2.empty?
      if copy1.empty?
        result << copy2.shift
      elsif copy2.empty?
        result << copy1.shift
      end
    when copy1[0] > copy2[0]
      result << copy2.shift
    when copy1[0] < copy2[0]
      result << copy1.shift 
      next
    end
  end
  result
end 


p merge([1, 5, 9], [2, 6, 8]) #== [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]