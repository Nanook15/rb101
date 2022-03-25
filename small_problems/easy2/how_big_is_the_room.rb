# Build a program that asks use for room width in metres
# and then displays the area of the room in square metres & feet

def room_size_calc(length, width)
  size = length * width

  "The area of the room is #{size.round(2)} square metres (#{(size*10.7639).round(2)} square feet)"

end

puts "Enter the length of the room in metres"
  length = gets.chomp.to_f

puts "Enter the width of the room in metres"
  width = gets.chomp.to_f

  puts room_size_calc(length, width)