# Output all the vowel from the strings
# Iterate hsh
# Check if string has vowel
# Find vowel
# Output

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

VOWELS = 'aeiou'
hsh.each do |_, value|
  value.each do |word|
    vowel_collection = []
    word.chars.each { |letter| vowel_collection << letter if VOWELS.include?(letter)}
    puts "Vowels of '#{word}' are '#{vowel_collection.join}'."
  end
end