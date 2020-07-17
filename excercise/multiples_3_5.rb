def multisum(num)
  array_multi = []
  (1..num).each {|a| array_multi << a  if a % 3 == 0 || a % 5 == 0}
  array_multi.sum
end

# Further exploration

def multisum_inject(num)
  (1..num).to_a.delete_if {|a| a % 3 != 0 && a % 5 != 0}.inject(:+)
end

p multisum_inject(3) #== 3
p multisum_inject(5) #== 8
p multisum_inject(10) #== 33
p multisum_inject(1000) #== 234168