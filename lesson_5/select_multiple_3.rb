# Given the following data structure use a combination of methods, including either the select or reject method, to return a new array identical in structure to the original but containing only the integers that are multiples of 3.

# Return num % 3 == 0
# Combination of methods
# select
# Keep structure

# Iterate throught the array
# Iterate sub-array
# Evaluate each numbers
# Give a condition for the evaluation
# Return the new array with the same structure but with only qualify numbers

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

new_arr = arr.map do |arr|
  arr.select { |num| num % 3 == 0 }
end

p new_arr