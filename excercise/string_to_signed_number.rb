DIGITS = {'1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0}
def string_to_integer(string)
  list_integer = []
  string.chars.each {|num| list_integer << DIGITS[num]}
  output_integer = list_integer.inject {|sum, number| sum * 10 + number}
  output_integer
end

def string_to_signed_integer(string)
  if DIGITS.keys.include? string[0]
    output_signed_integer = string_to_integer(string)
  else
    if string[0] == '+'
      no_signed_string = string.delete '+'
      output_signed_integer = string_to_integer(no_signed_string)
    elsif string[0] == '-'
      no_signed_string = string.delete '-'
      output_signed_integer = string_to_integer(no_signed_string) * -1
    end
  end
  output_signed_integer
end

p string_to_signed_integer('4321') #== 4321
p string_to_signed_integer('-570') #== -570
p string_to_signed_integer('+100') #== 100