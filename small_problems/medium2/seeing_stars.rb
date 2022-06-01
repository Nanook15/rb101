# write a method that takes a odd number (7 min) and prints a star


def top(top_row, num)
  until top_row == -1
    puts "*#{' ' * top_row}*#{' ' * top_row}*".center(num)
    top_row -= 1
  end
end

def bottom(bottom_row, num)
  bottom_row = bottom_row + 1
  gap = 0
  until bottom_row == gap
    puts "*#{' ' * gap}*#{' ' * gap}*".center(num)
    gap += 1
  end
end

def stars(num)
  midpoint = num / 2
  first_row_spaces = (num - 3) / 2
  top(first_row_spaces, num)
  puts "*" * num
  bottom(first_row_spaces, num)
end




p stars(7)
p stars(9)
