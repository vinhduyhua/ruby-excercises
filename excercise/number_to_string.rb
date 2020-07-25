=begin
Create a definition of converting integer to string
Take the numbers input
Break the number down into individual digits
  - Remainder of a number is the last digit of that number
Convert each individual number to string
Return the string output
=end
require 'pry'

DIGITS = {1 =>'1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0'}

def integer_to_string(int)
  arr_digits = []
  if int != 0
    while int > 1
      arr_digits << int % 10
      int /= 10
    end
  else
    arr_digits << int
  end
  string = arr_digits.reverse.map {|num| DIGITS[num] }
  string.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'