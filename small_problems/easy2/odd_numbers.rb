# Print all the odd numbers from 1 to 99 inclusive,
# with each number on a separate line

 (0..99).each do | i | 
    if i.odd? == true
      puts i 
    end
 end
