# write a method that take 3 arguments and returns either triangle type of invalid
# Rules:
# (a) equilaterial = all sides of equal length
# (b) isosceles = 2 sides of equal length
# (c) scale = 3 sides of differing length
# plus (i)  all sides greater than 0 (ii) 2 short sides long than the third

def valid_triangle?(a, b, c)
  validation = [a, b, c].sort.reverse

  if validation.include?(0)
    return :invalid
  elsif validation[0] > validation[1] + validation[2]
    return :invalid
  end
end


def triangle(a, b, c)
  if valid_triangle?(a, b, c) == :invalid
    return :invalid
  end

  case
  when a == b && a == c && b == c 
    :equilateral
  when a == b || a == c || b == c  
    :isosceles
  when a != b && a != c && b != c 
    :scalene 
  end
end



p triangle(3, 3, 3) #== :equilateral
p triangle(3, 3, 1.5) #== :isosceles
p triangle(3, 4, 5) #== :scalene
p triangle(0, 3, 3) #== :invalid
p triangle(3, 1, 1) #== :invalid