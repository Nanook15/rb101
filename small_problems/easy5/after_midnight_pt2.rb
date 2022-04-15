def after_midnight(time_after)
  hours = time_after[0, 2].to_i
  mins = time_after[3, 2].to_i
  hours_to_mins = hours * 60 
  if hours_to_mins < 1440
    return mins + hours_to_mins
  else 
    return 0
  end
end

def before_midnight(time_before)
  hours = time_before[0, 2].to_i
  mins = time_before[3, 2].to_i
  hours_to_mins = hours * 60 
  if hours_to_mins > 0
    return 1440 - (mins + hours_to_mins)
  else  
    return 0
  end
end




p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0