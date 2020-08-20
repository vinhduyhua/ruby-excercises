=begin
- pop out the last element and prepend it to the array
=end

def reverse!(arr)
  temp_arr = []
  arr.each { |num| temp_arr << num }
  temp_arr.each_with_index do |item, index|
    arr[-(index + 1)] = item
  end
  arr
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

list = []
p reverse!(list) == []
p list == []