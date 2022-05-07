# continutation from pt 1 - write method that rotates a string
# and a method that rotates integers. you may use the ls method
# rotate_array


def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_string(string)
  rotate_array(string.split('')).join
end

def rotate_integer(integer)
  rotate_array(integer.digits).join.to_i
end

p x = 'Hello'
p rotate_string(x)
p x

p y = 12345
p rotate_integer(y)
p y