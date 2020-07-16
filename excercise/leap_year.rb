def leap_year_gregorian?(year)
  if year % 4 == 0
    if year % 100 == 0
      year % 400 == 0 ? true : false
    else
      true
    end
  else
    false
  end
end

def leap_year_julian?(year)
  year % 4 == 0 ? true : false
end

def leap_year?(year)
  year >= 1752 ? leap_year_gregorian?(year) : leap_year_julian?(year)
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true