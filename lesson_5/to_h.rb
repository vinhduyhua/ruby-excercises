# Convert to hash without using to_h
#  Example: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

# Create a new hash
# Iterate through the arr
# Assign key to the new hash with the first element of sub-array
# Assign value to the new hash with the second element of sub-array
# Return a hash

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

hash = Hash.new
arr.each do |sub_arr|
  hash[sub_arr[0]] = sub_arr[1]
end

p hash