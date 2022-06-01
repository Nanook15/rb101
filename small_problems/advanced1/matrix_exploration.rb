# write a method that transposes a matrix without using Array#transpose or 
# matrix class library. transponstion must occur in place. 

require 'pry'

def transpose!(matrix)
  x = 0
  y = 0 

  loop do
    break if x == 2 && y == 0
    y += 1
    
    matrix[x][y], matrix[y][x] = matrix[y][x], matrix[x][y]

    if y == 2
      x += 1
      y = 0
    end    
  end
end



matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose!(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]