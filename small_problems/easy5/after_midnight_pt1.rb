# def time_of_day(num)
#   minutes_after_or_before_midnight = time.abs % 1440
#   minutes_before_or_after_hour = minutes_after_or_before_midnight % 60
  
#   if time.zero?
#     puts '00:00' 
#   elsif time.positive?
#     hours_after_midnight = (minutes_after_or_before_midnight - minutes_before_or_after_hour)/60
#     puts "#{hours_after_midnight}:#{minutes_before_or_after_hour}"
#   elsif time.negative?
#     hours_after_midnight = (minutes_after_or_before_midnight - minutes_before_or_after_hour)/60
#     puts "#{23-hours_after_midnight}:#{60-minutes_before_or_after_hour}"
#   end
# end

# def time_of_day(num)
#   num = num % 1440
#   time =  num.divmod(60)
#   time = "%02d:%02d" % time
# end

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def normalize_minutes_to_0_through_1439(minutes)
  while minutes < 0
    minutes += MINUTES_PER_DAY
  end

  minutes % MINUTES_PER_DAY
end

def time_of_day(delta_minutes)
  delta_minutes = normalize_minutes_to_0_through_1439(delta_minutes)
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

# p time_of_day(0) == "00:00" 
p time_of_day(-3) == "23:57"
# p time_of_day(35) == "00:35" 
p time_of_day(-1437) == "00:03"
# p time_of_day(3000) == "02:00"
# p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"