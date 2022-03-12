def rolling_buffer1(buffer, max_buffer_size, new_element)
  p buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  #buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  p buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  #buffer
end

array = [12, 22, 23, 24, 25, 22]

max_array = 5

element = 15


p rolling_buffer1(array, max_array, element)

p rolling_buffer2(array, max_array, element)

#p buffer + new_element

#p buffer << new_element