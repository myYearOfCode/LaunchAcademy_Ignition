require "spec_helper"

RSpec.describe Hand do
  it "should correctly add 4 card values" do
    deck = Deck.new
    hand = Hand.new(deck.deal)
    puts hand.count_hand
    expect("True").to eq("True")
    expect(hand.count_hand.kind_of?("Fixnum")).to be True
  end
end
# ) == 1 #.kind_of?(
