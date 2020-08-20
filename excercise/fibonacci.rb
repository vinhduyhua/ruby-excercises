=begin
- generate the bibonacci list
- first number is equal to 1
- previous number is equal to 1
- next number is equal to previous number plus first number
- count the fibonacci list
- stop if fibonacci number of digit is equal to the input number
- return fibonacci count
=end
def find_fibonacci_index_by_length(num_of_digit)
  fibonacci = [1, 1]
  fibonacci.each_with_index do |item, index|
    fibonacci << fibonacci[index + 1] + item
    break if fibonacci.last.to_s.size == num_of_digit
  end
  fibonacci.count
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
