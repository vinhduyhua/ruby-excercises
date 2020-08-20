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

def signed_integer_to_string(num)
  if num < 0
    num *= -1
    integer_to_string(num).prepend("-")
  elsif num > 0
    integer_to_string(num).prepend("+")
  else
    integer_to_string(num)
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'