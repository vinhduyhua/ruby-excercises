require 'pry'

SETTINGS = 'choose' # 'player' 'computer', 'choose'
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diagonals
def prompt(msg)
  puts "=> #{msg}"
end

# rubocop: disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts ""
  prompt "You are 'X', and computer is 'O'"
  puts ""
  puts "1    |2    |3"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----|-----|-----"
  puts "4    |5    |6"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----|-----|-----"
  puts "7    |8    |9"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop: enable Metrics/AbcSize

def joinor(arr, delimiter = ', ', word = 'or')
  length = arr.size
  if arr.any? { |num| num.to_i == 0 }
    false
  elsif length <= 1
    arr.first
  elsif length == 2
    arr.join(' ' + word + ' ')
  elsif length > 2
    arr.take(length - 1).join(delimiter) + delimiter + word + ' ' + arr[-1].to_s
  end
end

def empty_square(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def initialize_board
  new_board = Hash.new
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def user_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square: #{joinor(empty_square(brd))}"
    square = gets.chomp.to_i
    break if empty_square(brd).include?(square)
    prompt 'Sorry, invalid input'
  end
  brd[square] = PLAYER_MARKER
end

def winning_square(brd, arr)
  arr.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 2 &&
       brd.values_at(line[0], line[1], line[2]).any? { |num| num == INITIAL_MARKER }
      return line.select { |num| brd[num] == INITIAL_MARKER }.join.to_i
    end
  end
        
  arr.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 2 &&
       brd.values_at(line[0], line[1], line[2]).any? { |num| num == INITIAL_MARKER }
      return line.select { |num| brd[num] == INITIAL_MARKER }.join.to_i
    end
  end
  false
end

def computer_places_piece!(brd)
  square = empty_square(brd).sample
  if brd[5] == INITIAL_MARKER
    square = 5
  elsif winning_square(brd, WINNING_LINES)
    square = winning_square(brd, WINNING_LINES)
  end
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_square(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def player_goes_first(brd, score_1, score_2)
  loop do
    user_places_piece!(brd)
    computer_places_piece!(brd)
    display_board(brd)
    prompt "Player's score: #{score_1}"
    prompt "Computer's score: #{score_2}"
    break if someone_won?(brd) || board_full?(brd)
  end
  detect_winner(brd)
end

def computer_goes_first(brd, score_1, score_2)
  loop do
    computer_places_piece!(brd)
    display_board(brd)
    break if someone_won?(brd) || board_full?(brd)
    prompt "Player's score: #{score_1}"
    prompt "Computer's score: #{score_2}"
    user_places_piece!(brd)
  end
  detect_winner(brd)
end

loop do
  player_score = 0
  computer_score = 0
  loop do
    board = initialize_board
    display_board(board)
    
    case SETTINGS
    when 'player'
      player_goes_first(board, player_score, computer_score)
    when 'computer'
      computer_goes_first(board, player_score, computer_score)
    when 'choose'
      prompt 'Who do you want to go first?'
      prompt "(enter 'm' for you, and 'c' for computer)"
      first_player = gets.chomp.downcase
      if first_player == 'm'
        player_goes_first(board, player_score, computer_score)
      elsif first_player == 'c'
        computer_goes_first(board, player_score, computer_score)
      end
    end
    
    if detect_winner(board) == 'Player'
      player_score += 1
    elsif detect_winner(board) == 'Computer'
      computer_score += 1
    end
    if player_score == 5 || computer_score == 5
      prompt "#{detect_winner(board)} won!"
      break
    end
  end
  prompt "Play again? (Y or N)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
prompt "Thank you for playing Tic Tac Toe"
