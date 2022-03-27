# Print all the even numbers from 1 to 99 inclusive,
# with each number on a separate line

(1..99).each do | i | 
  if i.even? == true
    puts i 
  end
end
