require_relative "card"
require_relative "hand"

class Deck
  attr_reader :cards
  SUITS = ['♦', '♣', '♠', '♥']
  RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']

  def initialize
    @cards = build_deck
  end

  def deckCount
    @cards.length
  end

  def build_deck
    cards = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        cards << Card.new(rank, suit)
      end
    end
    cards.shuffle!
  end

  def deal()
    @cards.pop(4)
  end

  # def deal(hand, toDeal)
  #   toDeal.times do
  #     card = @cards.pop()
  #     hand.recieveCard(card)
  #   end
  # end
end
