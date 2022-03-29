# write a method that takes a hexadecimal string of digits
# and returns the appropriate number as an integer
# cannot use string#to_i or Integer()

DIGITS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5'=> 5, '6' => 6, '7' => 7, '8' => 8,
'9' => 9, 'a' => 10, 'b' => 11, 'c' => 12, 'd' => 13, 'e' => 14, 'f' => 15,
'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15
}


def hexadecimal_to_integer(string)
digits = string.chars.map { | char | DIGITS[char]}

value = 0 

digits.each { | digit | value = 16 * value + digit }
value

end



p hexadecimal_to_integer('4D9f') #== 19871
p hexadecimal_to_integer('E7a9') #== 59305
p hexadecimal_to_integer('3b') #== 59
