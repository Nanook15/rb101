require 'date'
def date_valid?(date, date_format)
  Date.parse(date).strftime(date_format) == date
end


  start = '22/02/2022'
  start_date = Date._parse(start)

 p Date._strptime(start, '%d/%m/%Y')


#puts date_valid?("start", )
puts date_valid?(start, "%d/%m/%Y")
#puts date_valid?("28 Feb 2015 Wed", "%d %b %Y %a")
