# Keep sub-array structure, sort logically with odd number only
# Exmaple: [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

# Iterate through the array
# Sort each sub-array only if the element is odd
# Return a new array

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

new_arr = arr.sort_by do |sub_arr|
  sub_arr.map { |num| num if num.odd? }
end

p new_arr