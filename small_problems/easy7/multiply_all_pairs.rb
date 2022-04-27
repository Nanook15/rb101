# write a method that takes 2 arrays as arguments 
# and multiplies all possible pairs of elements between 
# the two arrays. results should be sorted in ascending value

def multiply_all_pairs(arr1, arr2)
  result = []

  arr1.each do | num1 |
    arr2.each do | num2 |
      result << num1 * num2
    end
  end

  result.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]