# re-work the launch school solution so that it accepts 
# positive and negative numbers and returns an answer within the range 360°



DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE
DEGREES = 360

def dms(degrees_float)
  case
  when degrees_float > DEGREES
    degrees_float = degrees_float % DEGREES
  when degrees_float < 0 
    degrees_float = DEGREES - (degrees_float.abs % DEGREES)
  else  
    degrees_float
  end

  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end



p dms(400) == %(40°00'00")
p dms(-40) == %(320°00'00")
p dms(-420) == %(300°00'00")