#      ***
#    *     *
#   *       *
#  *         *
#  *         *
#  *         *
#   *       *
#    *     *
#      ***

#      ***
#    *     *
#  *         *
#  *         *
#  *         *
#    *     *
#      ***

# def print_row(grid_size, distance_from_center)
#   number_of_spaces = distance_from_center + 2
#   spaces = ' ' * number_of_spaces
#   output = "*#{spaces}*"
#   puts output.center(grid_size)
# end

# def circle(grid_size)
#   max_distance = (grid_size) / 2
#   puts "***".center(grid_size)
#   1.upto(max_distance) { |distance| print_row(grid_size, distance) }
#   3.times { |_| puts "*#{' ' * (grid_size - 2)}*" }
#   1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
#   puts "***".center(grid_size)
# end



def print_row(grid_size, distance_from_center)
  number_of_spaces = distance_from_center
  spaces = ' ' * number_of_spaces
  output = "*#{spaces}*"
  puts output.center(grid_size)
end

def circle(grid_size)
  max_distance = (grid_size) / 2
  puts "***".center(grid_size)
  3.upto(grid_size) { |distance| print_row(grid_size, distance) }
  3.times { |_| puts "*#{' ' * (grid_size - 2)}*" }
  # 1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
  # puts "***".center(grid_size)
end

circle(9)