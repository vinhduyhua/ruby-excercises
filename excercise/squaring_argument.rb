def multiply(a, b)
  a * b
end

def square(n)
    multiply(n, n)
end

def power_of_n(power, n)
  product = 1
  power.times {product = multiply(n, product)}
  product
end
  
puts square(3)
puts power_of_n(3, 2)