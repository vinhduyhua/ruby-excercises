words = "the flintstones rock"

def titleize(string)
  string_array = string.split(' ').each {|word| word[0] = word[0].upcase}
  string_array.join(' ')
end

p titleize(words)