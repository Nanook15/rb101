# method that takes 2 arguments, a positive integer and boolean
# calculates the bonus for a given salary
# if true, the bonus should be half the salary
# if false, the bonus should be 0

def calculate_bonus(salary, bonus)
  bonus ? salary / 2 : 0
end


puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000