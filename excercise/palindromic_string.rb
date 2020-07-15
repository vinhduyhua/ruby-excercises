def alphanumerics?(a)
  all_alphanumerics = ('a'..'z').to_a + ('A'..'Z').to_a + (0..9).to_a
  all_alphanumerics.include?(a) ? true : false
end

def to_alphanumerics(a)
  output = []
  a.map {|array_elements| output << array_elements.downcase if alphanumerics?(array_elements)}
  output
end

def real_palindrome?(a)
  a = to_alphanumerics(a.split(//))
  a == a.reverse
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false