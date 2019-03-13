class Deck
  def initialize()
    @SUITS = ['♦', '♣', '♠', '♥']
    @RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']
    @cards = shuffle()
  end

  def shuffle()
    deck = []
    @SUITS.map do |suit|
      @RANKS.map do |rank|
        deck.push("#{suit}#{rank}")
      end
    end
    deck.shuffle!
    puts deck
    deck
  end

end
