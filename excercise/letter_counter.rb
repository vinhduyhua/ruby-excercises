=begin
  Iterate over the sentence
  Iterate over each words
  Count number of letter
  Return the result to the word count
  Increment the word_count if the count is equal to the word_count
=end

def word_sizes(str)
  count_arr = []
  count_hash = {}
  str.split(' ').each do |word|
    count_arr << word.size
  end
  count_arr.each do |num|
    count_hash[num] = count_arr.count(num)
  end
  count_hash
end

p word_sizes('Hey diddle diddle, the cat and the fiddle!')

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}