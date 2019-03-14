class Square
  attr_reader :x, :y
  def initialize(side, x = 0, y = 0)
    @side = side
    @x = x
    @y = y
  end

  def length
    @side
  end

  def width
    @side
  end

  def diameter
    Math.sqrt(2*@side**2)
  end

  def area
    @side**2
  end

  def perimeter
    @side*4
  end

  def contains_point?(x, y)
    x_check = (x >= (@x-(@side/2.0))) && (x <= (@x + (@side/2.0)))
    y_check = (y >= (@y-(@side/2.0))) && (y <= (@y + (@side/2.0)))
    return ( x_check && y_check )
  end

end
