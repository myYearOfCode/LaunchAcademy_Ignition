require "spec_helper"
require 'pry'

RSpec.describe Player do
  let(:player_name) { 'Count Chocula' }
  let(:position) { 'Pitcher' }
  let(:player) { Player.new(player_name, position) }

  it 'returns an object' do
    expect(player).to be_a(Player)
  end

  it 'has a name' do
    expect(player.name).to be_a(String)
  end

  it 'has a position' do
    expect(player.player_data).to be_a(String)
  end
end
