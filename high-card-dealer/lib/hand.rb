class Hand
  def initialize(cards = [])
    @cards = cards
  end

  def count_hand
    total=0
    face_cards = {'A'=> 14, "K"=> 13, "Q" => 12, "J" => 11}
    @cards.each do |card|
      if card.rank.kind_of?(Fixnum)
        total += card.rank
      else
        total += face_cards[card.rank]
      end
    end
    total
  end

  def hand_summary
    summary = []
    @cards.each do |card|
      summary.push(" #{card.suit}#{card.rank}")
    end
    return summary.join(',')
  end

end
