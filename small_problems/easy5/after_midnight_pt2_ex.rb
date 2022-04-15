# as with after midnight pt 2 exercise, convert a string
# representation of a 24 hour clock time but this time 
# we can use the Date or Time classes.

DATE_STAMP = Time.new(2022, 4, 17, 0, 0, 0)
MINUTES_PER_HOUR = 60

def after_midnight(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  integer = (Time.new(2022, 4, 17, hours, minutes) - DATE_STAMP) / MINUTES_PER_HOUR
  (integer % 1440).to_i
end

def before_midnight(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  integer = (DATE_STAMP - Time.new(2022, 4, 17, hours, minutes)) / MINUTES_PER_HOUR
  (integer % 1440).to_i
end



p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0