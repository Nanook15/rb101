# write a method that returns the type of triangle based on the following criteria
# (a) all angles must add up to 180 degrees and be greater than 0
# (b) right angel - right angle must be 90 degrees
# (c) acute - all 3 angles are less than 90 degrees
# (d) obtuse - one angle is greater than 90 degrees

def triangle(a, b, c)
  triangle = [a, b, c]

  case
  when triangle.include?(0)
    :invalid
  when a + b + c != 180
    :invalid
  when triangle.include?(90)
    :right
  when triangle.max > 90
    :obtuse
  when a < 90 && b < 90 && c < 90
    :acute
  end
end


p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
