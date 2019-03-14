require_relative "hand"
require_relative "card"
require_relative "deck"
require "pry"

class Blackjack
  attr_reader :hand1, :hand2
  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def play
    while !gameOver do

    end
  end

  def gameOver
    if @hand1.calculate_hand == 21 && @hand2.calculate_hand != 21
      puts "Player 1 Wins!"
      true
    elsif @hand1.calculate_hand != 21 && @hand2.calculate_hand == 21
      puts "Player 2 Wins!"
      true
    elsif @hand1.calculate_hand == 21 && @hand2.calculate_hand == 21
      puts "Tie!"
      true
    else
      false
    end
  end
end
