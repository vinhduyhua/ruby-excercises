def xor?(a, b)
  if a && b
    false
  elsif a || b
    true
  else
    false
  end
end

p xor?(true, true)
p xor?(true, false)
p xor?(false, true)
p xor?(false, false)