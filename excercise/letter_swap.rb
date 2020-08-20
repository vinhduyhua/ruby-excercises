=begin
- Split the string to an array
- Reverse the array
- Merge the array to a string
=end

def swap(str)
  reverse_word = str.split(' ').map do |word| 
    word = word.split(//)
    last_letter = word.pop
    first_letter = word.shift
    word.prepend(last_letter).append(first_letter).join
  end
  reverse_word.join(' ')
end

p swap('Oh what a wonderful day it is')

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'