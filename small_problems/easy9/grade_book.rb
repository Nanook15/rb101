# write a method that returns a grade based on the average of 3 test scores


def get_grade(score1, score2, score3)
  average = (score1 + score2 + score3)/3

  case 
  when average >= 90
    'A'
  when average >= 80 && average < 90
    'B'
  when average >= 70 && average < 80
    'C'
  when average >= 60 && average < 70
    'D'
  when average >= 0 && average < 60
    'F'
  end
end


p get_grade(95, 90, 93) #== "A"
p get_grade(50, 50, 95) #== "D"