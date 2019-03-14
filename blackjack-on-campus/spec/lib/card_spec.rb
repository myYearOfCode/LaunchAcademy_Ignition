require "spec_helper"


RSpec.describe Card do #why does this seem to not always be used?
  let(:ace_card) {Card.new("♠","A")}
  let(:four_card) {Card.new("♥",4)}

  describe ".new" do
    it "should return a Card object" do
      expect(ace_card).to be_instance_of(Card)
    end
  end
  
  describe "#suit" do
    it "should return the suit ♠ when passed a ♠ card" do
      expect(ace_card.suit).to eq('♠')
    end

    it "should return the suit ♥ when passed a ♥ card" do
      expect(four_card.suit).to eq('♥')
    end
  end

  describe "#rank" do
    it "should return the rank A when passed a A card" do
      expect(ace_card.rank).to eq('A')
    end

    it "should return the rank 4 when passed a 4 card" do
      expect(four_card.rank).to eq(4)
    end
  end

end

# SUITS = ['♦', '♣', '♠', '♥']
# RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']
