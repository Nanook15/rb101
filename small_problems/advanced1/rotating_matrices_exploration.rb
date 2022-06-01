# write a method that rotates multi-dimensional arrays

def rotate90(array)
  sub_arrays =  array[0].size
  elements = array.size
  result = Array.new(sub_arrays){Array.new(elements)}
  
   array.reverse.each_with_index do |sub_arr, idx1|
     sub_arr.each_with_index do |ele, idx2|
       result[idx2][idx1] = ele
     end
   end
  result
end 

def rotate(array, degrees_of_rotation)
  rotations = degrees_of_rotation / 90

  rotate90(array)
end


matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]


p rotate(matrix1, 90)
p rotate(matrix1, 180)
p rotate(matrix1, 270)
# p rotate(matrix1, 360)

# rotate(matrix2, 90)
# rotate(matrix2, 180)
# rotate(matrix2, 270)
# rotate(matrix2, 360)

# new_matrix1_90degrees == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
# new_matrix2_90degrees == [[5, 3], [1, 7], [0, 4], [8, 2]]
