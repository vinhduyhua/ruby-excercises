ALPHABET = ('a'..'z').to_a + ('A'..'Z').to_a

def cleanup(str)
  arr_char = str.split("").map { |char| ALPHABET.include?(char) ? char : char = " " }
  arr_char.join.squeeze
end

p cleanup("---what's my +*& line?") == ' what s my line ' 