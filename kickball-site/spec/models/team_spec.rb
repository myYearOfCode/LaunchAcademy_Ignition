require "spec_helper"
require 'pry'
RSpec.describe Team do
  let(:players) do
    {
      'Count Chocula': 'Pitcher',
      'Trix the Rabbit': 'Catcher',
      'Capn Crunch': '1st Base'
    }
  end

  let(:team) { Team.new('Cereal Superstars', players) }

  it 'has a name' do
    expect(team.name).to be_a(String)
  end

  it 'has a list of players' do
    expect(team.players).to be_a(Hash)
  end

  it "calling #motto returns the team motto" do
    expect(team.motto).to be_a(String)
  end
end
