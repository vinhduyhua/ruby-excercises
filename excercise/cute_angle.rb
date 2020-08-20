DEGREE = "\xC2\xB0"

def dms(fnum)
  angle = fnum.to_i
  loop do
    if angle > 360
      angle -= 360
    elsif angle < 0
      angle += 360
    end
    break if angle <= 360 && angle >= 0
  end
  minute = (fnum - fnum.to_i) * 60
  rounded_minute = minute.round
  second = (minute - rounded_minute) * 60
  rounded_second = second.round
  angle.to_s + DEGREE + "%02d" % rounded_minute + "\'" + "%02d" % rounded_second + "\""
end

puts dms(30) == %(30°00'00")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
puts dms(400)
puts dms(-40)
puts dms(-420)