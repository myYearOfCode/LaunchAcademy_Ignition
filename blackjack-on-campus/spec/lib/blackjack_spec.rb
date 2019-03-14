require "spec_helper"

RSpec.describe Blackjack do
  let(:jack_card) { Card.new("♠", "J") }
  let(:three_card) { Card.new("♥", 3) }
  let(:ace_card) { Card.new("♥", "A") }
  let(:hand) { Hand.new([jack_card, three_card]) }
  let(:single_jack) { Hand.new([jack_card]) }
  let(:empty_hand) { Hand.new([]) }
  let(:high_ace) { Hand.new([ace_card, jack_card]) }
  let(:low_ace) { Hand.new([ace_card, ace_card]) }
  let(:four_card_hand) { Hand.new([ace_card, ace_card, ace_card, ace_card]) }
  let(:blackjack) { Blackjack.new(four_card_hand, four_card_hand) }

  describe ".new" do
    it "should make a new blackJack object" do
      expect(blackjack).to be_a(Blackjack)
    end

    it "should have a hand1 attr_reader" do
      expect(blackjack.hand1.class).to eq(Hand)
    end

    it "should have a hand2 attr_reader" do
      expect(blackjack.hand2.class).to eq(Hand)
    end
  end

  describe "#deal" do
    it "should deal one card at a time" do
      start_cards = blackjack.hand1.cards.length
      blackjack.deal(blackjack.hand1)
      end_cards = blackjack.hand1.cards.length
      expect(start_cards).to_not eq(end_cards)
    end
  end

  describe "#dealer_move" do
    it "should hit until 17" do
      expect(dealer_move(16)).to be true
    end

    it "should pass at 17 and higher" do
      expect(dealer_move(17)).to be false
    end
  end
end
