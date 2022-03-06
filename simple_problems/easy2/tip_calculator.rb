# calculate tip by prompting for bill and tip %
# return bill, tip and total 


puts "Welcome to the Tip Calculator\nHow much was your bill? : "
  bill = gets.chomp.to_f

puts "What % tip would you like to leave? : "
  rate = gets.chomp.to_f/100

tip = bill * rate

total = tip + bill

puts "Please pay your server #{format("$%0.2f", total)}
      (a) Bill #{format("$%0.2f", bill)}
      (b) Tip #{format("$%0.2f", tip)}"
