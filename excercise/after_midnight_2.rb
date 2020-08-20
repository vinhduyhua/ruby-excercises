def after_midnight(time)
  time_split = time.split(':')
  hour = time_split.first.to_i
  minute = time_split.last.to_i
  return 0 if hour == 24
  hour * 60 + minute
end

def before_midnight(time) 
  time_split = time.split(':')
  hour = time_split.first.to_i
  minute = time_split.last.to_i
  return 0 if hour == 24
  hour * 60 - minute
end 

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0