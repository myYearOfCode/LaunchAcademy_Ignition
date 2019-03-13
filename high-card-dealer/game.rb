require 'pry'

require_relative "lib/deck"

puts "GAME START!",()

game_deck = Deck.new()
puts "There are #{game_deck.deckCount()} cards in the deck",()

player1 = Hand.new(game_deck.deal())
puts "Player 1 was dealt #{player1.hand_summary()}"

player2 = Hand.new(game_deck.deal())
puts "Player 2 was dealt #{player2.hand_summary()}",()

player1_score = player1.count_hand()
player2_score = player2.count_hand()
puts "Player 1's hand value: #{player1_score}"
puts "Player 2's hand value: #{player2_score}",()

if player1_score === player2_score
  puts "TIE!"
else
  winner = player1_score > player2_score ? "Player 1" : "Player 2"
  puts "#{winner} wins the game!"
end
