# write a recursive merge sort method

require 'pry'

def merge_sort(array)
  x = array.size

  if x == 1
    return array
  end

  l1 = array[0...(x/2)]
  l2 = array[(x/2)...]

  l1 = merge_sort(l1)
  l2 = merge_sort(l2)
  binding.pry
  merge(l1, l2)
end

def merge(arr1, arr2)
  result = []
  copy1 = arr1.dup
  copy2 = arr2.dup
  binding.pry
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

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
# p merge_sort([5, 3]) == [3, 5]
# p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
# p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
# p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]