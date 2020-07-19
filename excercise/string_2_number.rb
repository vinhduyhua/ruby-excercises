def string_to_integer(numeric_string)
  ascii_number = numeric_string.bytes
  converted_integer = ascii_number.map {|a| a - 48}
  converted_integer = converted_integer.inject {|sum, a| sum * 10 + a}
end

#Further exploration

HEXADECIMAL = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
  'A' => 10,
  'B' => 11,
  'C' => 12,
  'D' => 13,
  'E' => 14,
  'F' => 15
}

def hexadecimal_to_integer(hexadecimal_string)
  hexadecimal_array = hexadecimal_string.upcase.chars.map {|a| HEXADECIMAL[a] }
  converted_integer = 0
  hexadecimal_array.each_with_index {|a, expo| converted_integer += a * 16**(hexadecimal_array.size - expo - 1)}
  converted_integer
end

p hexadecimal_to_integer('4D9f') #== 19871

# p string_to_integer('4321') #== 4321
# p string_to_integer('570') #== 570

# Hexadecimal to Integer:
# [1,A,B,2]
# 1*16**4 + 10*16**3 + 11*16**2 + 2*16