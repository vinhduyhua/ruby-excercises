def multiply(numbers, factor)
  counter = 0
  multiplied_array = []
  loop do
    break if counter >= numbers.size
    current_number = numbers[counter]
    multiplied_array << current_number * factor
    counter += 1
  end
  multiplied_array
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]
p my_numbers

# iteratate the input array
# multiple each element by the input factor
# return a new array that is the input array with each number multiplied by the input factor