#Given this data structure, return a new array of the same structure but with the sub arrays being ordered (alphabetically or numerically as appropriate) in descending order.
# Return a new array
# Same structure
# Sub-array
# Ordered descending

# 1. Iterate sub-array
# 2. Order sub-array descendingly
# 3. Return a new array

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

new_arr = arr.map do |sub_array|
  sub_array.sort do |a, b|
    b <=> a
  end
end

p new_arr