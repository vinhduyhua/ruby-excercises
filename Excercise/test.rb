print "Please write word or multiple words:"
word = gets.chomp.split(//)

puts %Q(There are #{character_count} characters in "#{word}".)