require "spec_helper"

RSpec.describe Deck do
  let(:deck) {Deck.new()}

  describe ".new" do

    it "should return a Deck object" do
      expect(deck).to be_instance_of(Deck)
    end

    it "should return an object" do
      expect(deck).to be_a(Object)
    end

    it "should have 52 cards" do
      expect(deck.cards.length).to be(52)
    end

  end

  describe "#deal" do
    it "should have 51 cards after dealing one card" do
      deck.deal(1)
      expect(deck.cards.length).to be(51)
    end

    it "should have 49 cards after dealing three cards" do
      deck.deal(3)
      expect(deck.cards.length).to be(49)
    end

    it "should deal out a Card object" do
      expect(deck.deal(1)[0]).to be_instance_of Card
    end
  end

end
