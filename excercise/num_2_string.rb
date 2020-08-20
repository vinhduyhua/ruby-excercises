=begin
Input integer
Create a collection that contain all the conversion of integer to string
Extract each character of the number and push them into an array
  Loop through the number
  if number > 10
  number % count
  count + 10
Convert number of the array to integer
Combine the array to string
Output string of itself
=end

INT_2_STR = { 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0' }

def integer_to_string(num)
  list_integers = []
  loop do
    list_integers << num % 10
    num /= 10
    break if num == 0
  end
  list_integers.map { |num| INT_2_STR[num] }.reverse.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'