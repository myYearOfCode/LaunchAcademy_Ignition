class BoundingBox
  attr_reader :width, :height, :x, :y
  def initialize(x, y, width = nil, height = nil) # add inputs as needed
    @x = x
    @y = y
    @width = width
    @height = height
  end

  def left
    @x
  end

  def right
    @x + @width
  end

  def top
    @y + @height
  end

  def bottom
    @y
  end

  def contains_point?(x, y)
    output = false
    if (@width != nil) && (@height != nil)
      output = ((x >= @x) && (x <= (@x + @width)) && (y >= @y) && (y <= (@y + @height)))
    end
    return output
  end

end
