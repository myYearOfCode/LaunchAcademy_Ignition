class Space
  attr_accessor :value, :player

  def initialize(player = nil, symbol = nil)
    @value = " "
    @player = player
  end

  def symbol
   @player == nil ? "-" : @player.symbol
  end

  def set_value(player, symbol)
    @player = player
    @symbol = symbol
  end
end
