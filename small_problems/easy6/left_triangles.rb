# create a method that builds an inverted triangle with sides of 'n' length
# the straight side is further the left side of screen

def triangle(n)
  counter = n
  right_justification = n

  loop do 
    break if counter == 0
    puts ('*' * counter).rjust(right_justification)
    counter -= 1
  end
end 

triangle(5)
triangle(10)