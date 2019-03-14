class BoundingArea
  def initialize(bounding_boxes)
    @bounding_boxes = bounding_boxes
  end

  def boxes_contain_point?(x,y)
    result = false
    @bounding_boxes.each do |box|
      if box.contains_point?(x,y) == true
        result = true
      end
    end
    result
  end
end
