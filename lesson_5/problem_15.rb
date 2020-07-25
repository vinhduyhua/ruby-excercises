# Given this data structure write some code to return an array which contains only the hashes where all the integers are even.

# Return an array contain hashes
# Hash contain even integers

# Iterate through the arr
# Iterate through hash
# Check hash value which is the array
# Iterate through the array
# Check if integer even?
# Return new array
# Return the hash
# Return new array with hash
 
arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

new_arr = arr.map do |sub_arr|
  new_hash = Hash.new
  sub_arr.each do |key, value|
    new_hash[key] = value.select { |num| num.even? }
  end
  new_hash
end

p new_arr