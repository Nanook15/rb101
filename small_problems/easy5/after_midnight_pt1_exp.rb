# complete after midnight using date and/or time classes
# set time - midnight on a saturday
# convert number to seconds?/ minutes?
# add/substract from midnight
# format answer

def time_of_day(delta_min)
 delta_seconds = delta_min * 60 
 date_stamp = Time.new(2022, 4, 17, 0, 0, 0)
 time = date_stamp + delta_seconds
 time.strftime('%A %H:%M')
end

p time_of_day(0) #== "00:00" x
p time_of_day(-3) #== "23:57" x
p time_of_day(35) #== "00:35" x
p time_of_day(-1437) #== "00:03" x
p time_of_day(3000) #== "02:00" 
p time_of_day(800) #== "13:20"
p time_of_day(-4231) #== "01:29"