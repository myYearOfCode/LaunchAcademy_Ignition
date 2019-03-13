require_relative 'deck'
require 'pry'

class Hand
  def initialize(cards)
    @cards = cards
  end

  def calculate_hand
    hand = 0
    aces = 0
    @cards.each do |card|
      if card.rank != "A"
        hand += card.rank.class == String ? 10 : card.rank.to_i
      else
        aces += 1
      end
    end
    aces.times do
      hand += hand > 10 ? 1 : 11
    end
    hand
  end
end
