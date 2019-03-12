class Theater
  def initialize(seats, patrons)
    @seats = seats
    @patrons = patrons
  end

  def admit!(moviegoers = 1)
    if @patrons < @seats
      @patrons += moviegoers
    else
      puts "I'm sorry, the Theater is full."
    end
  end

  def record_walk_outs!(walkouts = 1)
    if @patrons > 0
      @patrons -= walkouts
    else
      puts "I'm sorry, the Theater is empty."
    end
  end

  def at_capacity?()
    return @seats == @patrons
  end
end
