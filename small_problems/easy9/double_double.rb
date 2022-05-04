# write a method that doubles a number unless it is a double number (44, 103103, 2222)
# double number == even number of digits and left numbers == right numbers



def twice(num)
  num_string = num.to_s
  num_size = num_string.size
  half_size = num_size/2

  case 
  when num_size.even? && num_string.slice(0, half_size) == num_string.slice(half_size, half_size)
    num
  else 
    num * 2
  end
end

# Launch School Solution

def twice(number)
  string_number = number.to_s
  center = string_number.size / 2
  left_side = center.zero? ? '' : string_number[0..center - 1]
  right_side = string_number[center..-1]

  return number if left_side == right_side
  return number * 2
end

  




p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10