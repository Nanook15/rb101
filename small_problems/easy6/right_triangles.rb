# create a method that builds a triangle with sides of 'n' length
# the straight side is furthest from the left side of screen

def triangle(n)
  counter = 1
  right_justification = n

  loop do 
    break if counter > n
    puts ('*' * counter).rjust(right_justification)
    counter += 1
  end
end 

# Launch School solution
# def triangle(num)
#   spaces = num - 1
#   stars = 1

#   num.times do |n|
#     puts (' ' * spaces) + ('*' * stars)
#     spaces -= 1
#     stars += 1
#   end
# end


triangle(5)
triangle(10)