# create a method that builds a triangle with sides of 'n' length
# add in parameters that allows the user to specify the corner of the right angle


def top(num, side)
  counter = num
  justification = num

  loop do 
    break if counter == 0
    if side == 'left'
      puts ('*' * counter).ljust(justification)
    else
      puts ('*' * counter).rjust(justification)
    end
    counter -= 1
  end
end

def bottom(num, side)
  counter = 1
  justification = num

  loop do 
    break if counter > num
    if side == 'left'
      puts ('*' * counter).ljust(justification)
    else
      puts ('*' * counter).rjust(justification)
    end
    counter += 1
  end
end

def triangle(num, base, side)
  
  case 
  when base == 'top'
    top(num, side)
  when base == 'bottom'
    bottom(num, side)
  end
end


triangle(10, 'top', 'left')
triangle(10, 'top', 'right')
triangle(10, 'bottom', 'left')
triangle(10, 'bottom', 'right')