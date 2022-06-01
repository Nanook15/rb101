# def circle(r)
#   grid = Array.new(r * 2 + 1) { Array.new(r * 2 + 1, false) }
#   x, y = 0, r                     # start at the top of the circle
#   d = 3 - (2 * r)
#   loop do
#     update_grid(grid, x, y, r)
#     break if x >= y
#     if d < 0                      # move east one space
#       d = d + (4 * x) + 6
#       x = x + 1
#     else                          # move southeast one space
#       d = d + (4 * (x - y)) + 10
#       x = x + 1
#       y = y - 1
#     end
#   end

#   grid.each do |row|
#     puts row.map { |pixel| pixel ? '*' : ' ' }.join(' ')
#   end
# end

# def update_grid(grid, x, y, r)
#   grid[-y + r][ x + r] = true # Octet 1
#   grid[-x + r][ y + r] = true # Octet 2
#   grid[ x + r][ y + r] = true # Octet 3
#   grid[ y + r][ x + r] = true # Octet 4
#   grid[ y + r][-x + r] = true # Octet 5
#   grid[ x + r][-y + r] = true # Octet 6
#   grid[-x + r][-y + r] = true # Octet 7
#   grid[-y + r][-x + r] = true # Octet 8
# end




# circle(10)


def sine_wave(height, freq)
  # generate grid of appropriate size
  grid = []
  (height * 2 + 1 ).times { grid << (' ' * 80) }

  y_vals = (0...80).map { |y| (height * Math.sin(y * freq)).round }
  # change representation of y values to match array index
  # the highest y value (height), for example, becomes 0 since this is the top line of the grid
  y_vals.map! { |y| (y - height) * -1 } 
  80.times { |x| grid[y_vals[x]][x] = '*' }

  grid.each { |line| puts line }
end

sine_wave(1, 0.5)
puts ''
puts ''
sine_wave(2, 0.25)
puts ''
puts ''
sine_wave(10, 0.1)