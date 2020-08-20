=begin
- Collection of alpha number
- Iterate through the range from 0 to 19
- Convert the integer to alpha number - hash collection
- Sort the alpha number
- Convert back to integer
=end

ALPHA_NUM = [ 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 
              'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 
              'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 
              'eighteen', 'nineteen']

def alphabetic_number_sort(arr)
  int_2_alpha = Hash.new
  ALPHA_NUM.each_with_index { |item, index| int_2_alpha[index] = item }
  arr = arr.map { |num| int_2_alpha[num] }.sort
end

p alphabetic_number_sort((0..19).to_a)
# p alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]