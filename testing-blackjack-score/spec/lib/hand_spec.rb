require "spec_helper"

describe Hand do
  # These UTF-8 characters will be useful for making different hands:
  # '♦', '♣', '♠', '♥'

  let(:hand) { Hand.new([Card.new("♦",10), Card.new("♥","J")]) }
  let(:aceHigh) { Hand.new([Card.new("♦",10), Card.new("♥","A")]) }
  let(:aceLow) { Hand.new([Card.new("♦","A"), Card.new("♥","J"), Card.new("♥","J")]) }
  let(:twoAce) { Hand.new([Card.new("♦","A"), Card.new("♥","A")]) }
  let(:noAce) { Hand.new([Card.new("♦",5), Card.new("♥",4)]) }
  describe "#calculate_hand" do
    # We have included some example tests below. Change these once you get started!

    it "passes" do
      # Use the RSpec keyword `expect`, as it appears below, to test your assertions
      expect(hand.calculate_hand).to eq(20)
      expect(aceHigh.calculate_hand).to eq(21)
      expect(aceLow.calculate_hand).to eq(21)
      expect(twoAce.calculate_hand).to eq(12)
      expect(noAce.calculate_hand).to eq(9)
    end

    # it "fails" do
    #   expect(false).to eq true
    # end

    # Add your remaining tests here.

  end
end
