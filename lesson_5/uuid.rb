# Method return a random UUID without parameter

# Randomize hexadecimal number
# Default method
# Return a string of hexadecimal number
# 5 sections : 8-4-4-4-12

# Example: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

# Call without parameter
# Create 5 arrays has the size of 8, 4, 4, 4, 12
# Randomly create an integer and fill up each array
# Convert into hexadecimal
# Convert into a string
# Return a string

HEXADECIMAL = {
  0 => '0',
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9',
  10 => 'a',
  11 => 'b',
  12 => 'c',
  13 => 'd',
  14 => 'e',
  15 => 'f'
}

SECTIONS = [8, 4, 4, 4, 12]

def create_arr_random_num(size)
  random_arr = []
  size.times {|num| random_arr << num = rand(1..15)}
  random_arr
end

def int_to_hex(arr)
  arr.map { |int| HEXADECIMAL[int] }
end

def uuid
  uuid_arr = []
  SECTIONS.each do |arr_size|
    random_arr = create_arr_random_num(arr_size)
    uuid_arr << int_to_hex(random_arr).join
  end
  uuid_arr.join('-')
end

p uuid