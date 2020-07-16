def format_century(number)
  number = number.to_s
  if [11, 12, 13].include?(number.to_i % 100)
    number + 'th'
  else
    if number.chars.last == '1'
      number + 'st'
    elsif number.chars.last == '2'
      number + 'nd'
    elsif number.chars.last == '3'
      number + 'rd'
    else
      number + 'th'
    end
  end
end

def century(year)
  century_number = (year + 99) / 100
  format_century(century_number)
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'