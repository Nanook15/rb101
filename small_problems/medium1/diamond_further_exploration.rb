# amend the method given that takes an odd intger (n) and returns a diamond
# in an n x n grid
# the further exploration is the internal part of the diamond is missing

def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  number_of_spaces = number_of_stars - 2
  stars = number_of_stars == 1 ? '*' : "*#{' ' * number_of_spaces}*"
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end


diamond(9)