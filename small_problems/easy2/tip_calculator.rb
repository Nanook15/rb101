# create a simple tip calculator
# program should prompt for a bill & a tip rate
# program must compute the stip and display both the tip and total bill

def tip_calc(bill, tip_rate)
  tip = bill * tip_rate/100

  puts "The tip is $#{sprintf("%.2f", tip)}"
  puts "The total is $#{sprintf("%.2f", (bill + tip))}"

end

puts "What is the bill?"
  bill = gets.chomp.to_f

puts "What is the tip rate?"
  tip_rate = gets.chomp.to_f

tip_calc(bill, tip_rate)



 