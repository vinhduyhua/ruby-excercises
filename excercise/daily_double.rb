=begin
- Iterate throught the sentence
- Check if the character is the same as the previous character
- If yes, ignore this character and move to the next
- If no, put it in the new string
- Return the new string
=end
def crunch(str)
  new_str = ''
  str.split(//).each_with_index do |item, index|
    item == str[index + 1] ? next : new_str += item
  end
  new_str
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''