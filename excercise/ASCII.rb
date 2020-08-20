=begin
- Split the input string to an array
- Iterate the array and return the ascii value of each letter
- Sum up all the ascii value in the new array
=end

def ascii_value(str)
  str.split(//).map { |letter| letter.ord }.sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0