def joinor(arr, str1 = ', ', str2 = 'or')
  length = arr.size
  if length <= 1 || arr.any? { |num| num.to_i == 0 }
    false
  elsif length == 2
    arr.join(' ' + str2 + ' ')
  elsif length > 2
    arr.take(length - 1).join(str1) + str1 + str2 + ' ' + arr[-1].to_s
  end
end

p joinor([1, 2])
p joinor([1, 2, 3])
p joinor([1, 2, 3], '; ')
p joinor([1, 2, 3], ', ', 'and')

# Can take one, two, or three input
# First one is arr, second and third ones are strings
# Join the array to make a string
# First input is required
# Second and third inputs are optional => default second and third input
# If the array has two elements and it is the only input, join with "or" between them
# If the array has more than two elements, and it is the only input: 
#   - Join with "comma" following by a "space" after each element except the first one
#   - Insert "or" and a "space" in front of the last element
#   - Make it default if no additional inputs are provided
# If second input is provided, replace "comma" in default to the second input
# If third input is provided, replace "or" in default to the third input
# What happen if the array has two elements and both or either second and third inputs are provided
# Array can not be empty?
# What happen if array only has one element?
# Return error if array is empty or contain only one element
# What if array has two and second input is provided while thrid input is empty?

# Method has three inputs:
# => Array, and required
# => Second and third are string, default as ", " and "or "
# If array size is smaller than one, return error
# If array elements is not integer, return error
# If array size is two, ignore comma and put third input
# If array size is more than two, join with second input and insert third input before the last element
# => Join the array by ", " but without the last element
# => Concat ", str2" to the joined array
# Return as a string