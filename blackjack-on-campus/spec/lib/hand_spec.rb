require "spec_helper"

RSpec.describe Hand do
  let(:jack_card) {Card.new("♠","J")}
  let(:three_card) {Card.new("♥",3)}
  let(:ace_card) {Card.new("♥","A")}
  let(:hand) {Hand.new([jack_card, three_card])}
  let(:single_jack) {Hand.new([jack_card])}
  let(:empty_hand) {Hand.new([])}
  let(:high_ace) {Hand.new([ace_card, jack_card])}
  let(:low_ace) {Hand.new([ace_card, ace_card])}
  let(:four_card_hand) {Hand.new([ace_card, ace_card, ace_card, ace_card])}

  describe ".new" do
    it "should create an object" do
      expect(hand).to be_a(Object)
    end

    it "should create a Hand object" do
      expect(hand).to be_instance_of(Hand)
    end

    it "should have two cards" do
      expect(hand.cards.length).to eq(2)
    end
  end

  describe "#cards" do
    it "should have a .cards method" do
      expect(high_ace.cards).to be_a(Array)
    end
  end
  
  describe "#calculate_hand" do
    it "should correctly calculate jack-three pair" do
      expect(hand.calculate_hand).to eq(13)
    end

    it "should correctly calculate a high-ace pair" do
      expect(high_ace.calculate_hand).to eq(21)
    end

    it "should correctly calculate low-ace pair" do
      expect(low_ace.calculate_hand).to eq(12)
    end

    it "should correctly calculate a single jack" do
      expect(single_jack.calculate_hand).to eq(10)
    end

    it "should correctly calculate an empty hand" do
      expect(empty_hand.calculate_hand).to eq(0)
    end

    it "should correctly calculate more than two cards" do
      expect(four_card_hand.calculate_hand).to eq(14)
    end
  end



end
