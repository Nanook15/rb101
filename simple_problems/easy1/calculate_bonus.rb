def calculate_bonus(salary, bonus_achieved)

 # if bonus_achieved == true
 #   bonus = (salary*0.5).to_i
 # else
 #   bonus = 0
 # end

 bonus_achieved ? (salary/2) : 0

end





puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000