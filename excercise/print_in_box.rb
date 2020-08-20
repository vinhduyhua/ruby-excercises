def print_in_box(str)
  space = str.size + 2
  puts '+' + '-'*space + '+'
  puts '|' + ' '*space + '|'
  puts '|' + ' ' + str + ' ' + '|'
  puts '|' + ' '*space + '|'
  puts '+' + '-'*space + '+'
end

p print_in_box('To boldly go where no one has gone before.')
