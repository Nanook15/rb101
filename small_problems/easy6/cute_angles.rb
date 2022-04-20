# write a method that accepts a integer as a ° and returns 
# the ° minutes and seconds of the angle

# DEGREE = "\xC2\xB0"

# def dms(float)
#   degrees = float.to_i
#   minutes_and_seconds = float - float.to_i
#   minutes = (minutes_and_seconds * 60)
#   seconds = ((minutes - minutes.to_i)/60) * 3600

#   %(#{degrees}#{DEGREE}%02d\'%02d\") % [minutes, seconds]
  
# end

# Launch School Solution

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end


# p dms(30) == %(30°00'00")
# p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
# p dms(93.034773) == %(93°02'05")
# p dms(0) == %(0°00'00")
# p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")