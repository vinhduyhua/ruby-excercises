def short_long_short(a, b)
  if b.size > a.size
    a + b + a
  else
    b + a + a
  end
end

p short_long_short('abc', 'defgh') # "abcdefghabc"
p short_long_short('abcde', 'fgh') # "fghabcdefgh"
p short_long_short('', 'xyz') # "xyz"