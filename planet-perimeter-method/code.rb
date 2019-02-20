require 'pry'
def perimeter(width, height = nil)
  if height.nil?
    height = width
  end
    return ((width+height)*2)
end

puts perimeter(5)
puts perimeter(5,6)
