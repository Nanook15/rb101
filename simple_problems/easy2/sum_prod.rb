# user enter integer > than 0
# asks user sum or product
# of all numbers between 1 and integer entered

def computation(num, sum_prod)
  action = sum_prod == "s" ? 'sum' : 'product'
  answer = action == "sum" ? (1..num).to_a.inject(:+) : (1..num).to_a.inject(:*)
  "The #{action} of 1 to #{num} is #{answer}"
end   

num = []
sum_prod = []

loop do
  puts "Pick a number greater than 1 : "
    num = gets.chomp.to_i
  
    if num < 1 
      puts  "Error! Try Again."
    else
      
      
      loop do  
        puts "Would you like to know the sum or product of range 1 to #{num}?(s or p) : "
        sum_prod = gets.chomp
        
        if sum_prod == 's' || sum_prod == 'p'
          break
        else
          puts "Error! Try Again"
        end
      end
    end
  break
end 

 
puts computation(num, sum_prod)


    






