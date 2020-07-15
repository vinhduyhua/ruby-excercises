print "Please write word or multiple words: "
word = gets.chomp
character_count = word.count "^ "

puts %Q(There are #{character_count} characters in "#{word}".)