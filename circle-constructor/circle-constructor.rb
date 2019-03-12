class Circle
  def initialize(hash)
    if hash.kind_of?(Hash)
      if hash.has_key? :radius
        @radius = hash[:radius]
      elsif hash.has_key? :diameter
        @radius = hash[:diameter]/2
      else
        puts 'Please provide a radius or diameter.'
      end
    elsif hash.kind_of?(Fixnum)
        @radius = hash
    else
       puts 'Please provide a Hash or a number.'
    end
  end
end
