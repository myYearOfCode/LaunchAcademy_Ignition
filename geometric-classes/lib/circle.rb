class Circle
  attr_reader :radius, :x, :y
  def initialize(radius, x=nil, y=nil)
    @radius = radius
    @x = (x ? x : 0)
    @y = (y ? y : 0)
  end

  def diameter
    (@radius * 2).to_f
  end

  def area
    Math::PI*@radius**2.to_f
  end

  def perimeter
    Math::PI*2*@radius.to_f
  end

end
