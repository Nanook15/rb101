# write a method that returns how may Friday 13th's there are in a given year
# years greater than 1752 and therefore using the Gregorian Calendar

# def friday_13th(year)
#   require 'date'
#   number_of_days = 0

#   Date.civil(year).step(Date.civil(year,12,31)).each do |d|
#     if d.friday? && d.mday == 13
#       number_of_days += 1
#     end
#   end
#   number_of_days
# end

def friday_13th(year)
  require 'date'
  months = { 1 => 0, 2 => 0, 3 => 0, 4 => 0, 5 => 0, 6 => 0,
             7 => 0, 8 => 0, 9 => 0, 10 => 0, 11 => 0, 12 => 0}

  Date.civil(year).step(Date.civil(year,12,31)).each do |d|
    if d.friday?
      months[d.mon] = months[d.mon] + 1
    end
  end
  months.values.select { | m | m == 5}.count
end




p friday_13th(2015) #== 3
p friday_13th(1986) #== 1
p friday_13th(2019) #== 2