# require 'pry'
def oddities(array)
  odd_elements = []
  array.each_index {|a| odd_elements << array[a] if a.even? }
  odd_elements
end

# Further explorations

def even_array(array)
  even_elements = []
  array.each_index {|a| even_elements << array[a] if a.odd? }
  even_elements
end

def even_array_2(array)
  even_elements = []
  index = 1
  loop do
    break if index >= array.size
    even_elements << array[index]
    index += 2
  end
  even_elements
end

p even_array([2, 3, 4, 5, 6]) == [3, 5]
p even_array([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
p even_array(['abc', 'def']) == ['def']
p even_array([]) == []

p even_array_2([2, 3, 4, 5, 6]) == [3, 5]
p even_array_2([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
p even_array_2(['abc', 'def']) == ['def']
p even_array_2([]) == []