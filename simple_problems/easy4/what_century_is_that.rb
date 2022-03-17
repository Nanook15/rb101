#Write a method that takes a year as input and returns the century. 
#The return value should be a string that begins with the century number, 
#and ends with st, nd, rd, or th as appropriate for that number.
#New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# if year size = 1 or 2 it is first century
# else if year size = 3 or more && final two numbers are included within 1 - 99 then first numbers less final 2 + 1 == century. 
# else year minus final 2 numbers == century

def century(year)
  string_year = year.to_s
  final_index = string_year.size - 2
  century = string_year.slice!(0, final_index)

  if year <= 100
    return "1st" 
  elsif string_year != "00" 
   century = (century.to_i + 1).to_s
  end

  if (11..19).include?(string_year.to_i)
    "#{century}th" 
  elsif century.end_with?("1")
    "#{century}st"
  elsif century.end_with?("2")
    "#{century}nd"
  elsif century.end_with?("3")
    "#{century}rd"
  else "#{century}th"
  end
end


def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end


p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) # == '11th'
p century(1127) #== '12th'
p century(11201) #== '113th'




