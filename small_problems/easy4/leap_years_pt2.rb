# write a method that takes any year greater than 0 and returns
# true if the year is leap year - if prior to 1752 is divisble by 4
# if after 1754 is divisible by 4 unless divisble by 100
# in which case it must be divisible by 400 and 100.

# Input : integer
# output : boolean

def leap_century?(year)
  year % 100 == 0 && year % 400 == 0
end

def leap_year?(year)
  if year < 1752
    year % 4 == 0
  else
    (year % 4 == 0 && year % 100 != 0) ||
    leap_century?(year)
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true