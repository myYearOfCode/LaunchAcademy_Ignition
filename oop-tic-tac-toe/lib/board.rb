class Board
  attr_reader :value
  def initialize
    @value = []
    init_board
  end

  def init_board
    9.times do
      @value.push(Space.new())
    end
  end


end
