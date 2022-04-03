# In this exercise convert a a positive integer or to a string without using 
# Integer#to_s, String(), Kernel#format etc

NUMBERS = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'}


def integer_to_string(int)
  int.digits.reverse!.join('')
end


integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'