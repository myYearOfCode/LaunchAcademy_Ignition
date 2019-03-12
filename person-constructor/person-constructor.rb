class Person
  def initialize(first_name, middle_name=nil, last_name=nil)
    if (middle_name != nil) && (last_name != nil)
      @first_name = first_name
      @middle_name = middle_name
      @last_name = last_name
    else
      full_name = first_name.split(' ')
      if full_name.length === 2
        @first_name = full_name[0]
        @last_name = full_name[1]
      else
        @first_name = full_name[0]
        @middle_name = full_name[1]
        @last_name = full_name[2]
      end
    end
  end
end
