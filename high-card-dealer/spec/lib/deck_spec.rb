require "spec_helper"

RSpec.describe Deck do
  it "should return 52 cards" do
    Deck.new.cards.length.should == 52
  end

  it "should deal 4 cards at a time" do
    Deck.new.deal.length.should == 4
  end
end
