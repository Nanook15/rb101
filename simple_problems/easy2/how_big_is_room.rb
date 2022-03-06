# calculate floor area in square metres and feet
#  1 square meter == 10.7639 square feet
# Modify this program to ask for the input measurements in feet, and display the results in square feet, square inches, and square centimeters

sq_metres_to_sq_feet = 10.7369

puts "Welcome to the Room Size calculator\nWhat is the width of the room in feet? :"
  width = gets.chomp.to_f

puts 'What is the length of the room in feet? :'
 length = gets.chomp.to_f 


feet = width * length
inch = feet * 12
cm = feet / sq_metres_to_sq_feet * 10000

puts "The room is:\n(a) #{feet.round(2)} sq. feet\n(b) #{inch.round(2)} sq.inches\n(c) #{cm.round(2)} sq.cm"





