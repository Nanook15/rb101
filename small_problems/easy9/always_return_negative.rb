# write a method that when given a number always returns negative

def negative(num)
  if num > 0
    0 - num
  else 
    num
  end
end

# Launch School Solution
# def negative(number)
#   number > 0 ? -number : number
# end


p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby