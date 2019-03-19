require_relative "player"
require 'pry'

class Team
  attr_reader :name
  attr_reader :players

  def initialize(name, players)
    @name = name
    @players = []
    # I think I need to iterate through the players here and create individual players.
    make_players(players)
  end

  def make_players(players)
    players.each do |player|
      # binding.pry
      @players << Player.new(player[1], player[0])
    end
    
  end

  def motto
    "The #{name} are the best team ever!"
  end
end
