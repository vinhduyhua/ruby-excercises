=begin
  number of minutes
  if the minute is positive, time is after midnight
  if the minite is negative, time is before midnight
  (hh:mm)
  loop the total minute
  every iteration, minute + 1
  
=end

def time_of_day(total_minute)
  minute = 0
  hour = 0
  if total_minute >= 0
    total_minute.times do
      minute += 1
      if minute == 60
        hour += 1
        minute = 0
      end
      hour = 0 if hour == 24
    end
  elsif total_minute < 0
    minute = 60
    hour = 23
    total_minute *= -1
    total_minute.times do
      minute -= 1
      if minute == 0
        hour -= 1
        minute = 60
      end
      hour = 23 if hour < 0
    end
  end
  "#{'%02d' % hour}:#{'%02d' % minute}"
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"