# write a method that takes a string of digits
# and returns the appropriate number as an integer
# cannot use string#to_i or Integer()

DIGITS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
            '5'=> 5, '6' => 6, '7' => 7, '8' => 8,
          '9' => 9 
        }


def string_to_integer(string)
  digits = string.chars.map { | char | DIGITS[char]}
  
  value = 0 

  digits.each { | digit | value = 10 * value + digit }
  value

end
  


p string_to_integer('4321') #== 4321
# string_to_integer('570') == 570