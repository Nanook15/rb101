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
#   max_distance = (grid_size - 2) / 2
#   puts "***".center(grid_size)
#   1.upto(max_distance) { |distance| print_row(grid_size, distance) }
#   2.times { |_| puts "*#{' ' * (grid_size - 2)}*" }
#   1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
#   puts "***".center(grid_size)
# end


def print_row(grid_size, distance_from_side)
  spaces = ' ' * distance_from_side
  output = "#{spaces}#{'*' * (grid_size - (distance_from_side * 2))}#{spaces}"
  puts output.center(grid_size)
end

def circle(grid_size)
  max_distance = (grid_size / 3)
  half = (grid_size / 2) - 1
  half.downto(1) { |distance| print_row(grid_size, distance) }
  3.times { |_| puts "*" * grid_size }
  1.upto(half) { |distance| print_row(grid_size, distance) }
  # puts "***".center(grid_size)
end

circle(15)