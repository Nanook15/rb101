# write a method that transposes a matrix without using Array#transpose or 
# matrix class library.

require 'pry'

def transpose(matrix)
  new_matrix = [[],[],[]]

  matrix.each_with_index do |array, ind1|
    array.each_with_index do |element, ind2|
      new_matrix[ind2][ind1] = element
    end
  end
  new_matrix
end




matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]