# write a method that takes an odd intger (n) and returns a diamond
# in an n x n grid

# PEDAC
# The diamond is set within a n x n square


def diamond(num)
  iterations = num
  spaces = (num - 1) / 2
  stars = 1

  until spaces == 0
      puts "#{' ' * spaces}#{'*' * stars}#{' ' * spaces}"
      spaces -= 1
      stars += 2
  end 
  
  until spaces == num / 2 + 1
      puts "#{' ' * spaces}#{'*' * stars}#{' ' * spaces}"
      spaces += 1
      stars -= 2
  end
end

# Launch School Solution
def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end



diamond(9)