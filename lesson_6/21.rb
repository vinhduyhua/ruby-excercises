require 'pry'

SUITS = ['heart', 'diamond', 'club', 'spade']
SPECIAL_CARDS = ['jack', 'queen', 'king']
VALUES = (1..10).to_a + SPECIAL_CARDS << 'ace'

def prompt(msg)
  puts "=> " + msg
end

def initialize_deck
  SUITS.each_with_object({}) do |suit, hash|
    hash[suit] = VALUES
  end
end

def pick_random_card(deck)
  deck[SUITS.sample].sample
end

def assign_2_cards(deck)
  current_hand = []
  2.times { current_hand << pick_random_card(deck) }
  current_hand
end

def draw_new_card(deck, hand)
  hand << pick_random_card(deck)
end

def convert_special_cards(hand)
  hand.map do |card|
    if SPECIAL_CARDS.include?(card)
      10
    else
      card
    end
  end
end

def factoring_ace(hand)
  hand_without_ace = hand.select { |card| card.is_a? Integer }
  ace_value = hand.select { |card| card == 'ace' }.count
  4.times do |count|
    if hand_without_ace.sum < 10 - count && ace_value == count + 1
      ace_value += 10
      break
    else
      ace_value
    end
  end
  hand_without_ace << ace_value
end

def convert_hand(hand)
  if convert_special_cards(hand).any?('ace')
    factoring_ace(convert_special_cards(hand))
  else
    convert_special_cards(hand)
  end
end

def busted?(hand)
  converted_hand = convert_hand(hand)
  converted_hand.inject(:+) > 21
end

def display_player_hand(hand)
  puts "You have: #{hand.join(', ')}"
end

def display_one_dealer_card(hand)
  puts "Dealer has: #{hand[0]} and an unknown card"
end

def display_all_dealer_cards(hand)
  puts "Dealer has: #{hand.join(', ')}"
end

def deciding_winner(player, dealer)
  if !busted?(player) && !busted?(dealer)
    if player.sum > dealer.sum
      'The winner is player'
    elsif dealer.sum > player.sum
      'The winner is dealer'
    else
      "it's a tie!"
    end
  end
end

def display_winner(player, dealer)
  if !busted?(player) && !busted?(dealer)
    puts deciding_winner(convert_hand(player), convert_hand(dealer))
  else
    busted?(player) ? (puts "Winner is dealer") : (puts "Winner is player")
  end
end

new_deck = initialize_deck

# Main game loop
loop do
  player_hand = assign_2_cards(new_deck)
  dealer_hand = assign_2_cards(new_deck)
  loop do
    loop do
      system 'clear'
      display_player_hand(player_hand)
      display_one_dealer_card(dealer_hand)
      prompt "Please choose 'hit' or 'stay'"
      answer = gets.chomp.downcase
      if answer == 'hit'
        player_hand = draw_new_card(new_deck, player_hand)
      elsif answer == 'stay'
        break
      else
        prompt "Invalid answer, please try again"
      end
      break if busted?(player_hand)
    end
    if busted?(player_hand)
      puts "You are busted!"
      display_winner(player_hand, dealer_hand)
      break
    end
    loop do
      if busted?(dealer_hand) || convert_hand(dealer_hand).sum > 17
        break
      else
        dealer_hand = draw_new_card(new_deck, dealer_hand)
      end
    end
    if busted?(dealer_hand)
      puts "Dealer is busted!"
      display_winner(player_hand, dealer_hand)
      break
    end
    display_winner(player_hand, dealer_hand)
    break
  end
  display_player_hand(player_hand)
  puts "Your total point is #{convert_hand(player_hand).sum}"
  display_all_dealer_cards(dealer_hand)
  puts "Dealer total point is #{convert_hand(dealer_hand).sum}"
  prompt "Do you want to play again? (Y or N)"
  reply = gets.chomp.downcase
  break if reply == 'n'
end
