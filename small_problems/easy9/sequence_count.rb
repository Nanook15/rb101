# write a method that takes 2 integers and returns a sequence of integers in an array
# first integer is a count of elements in the array
# second integer represnets the multiples each element

def sequence(count, multiple)
result = []

  1.upto(count) do | num |
    result << num * multiple
  end 
  result 
end


p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []