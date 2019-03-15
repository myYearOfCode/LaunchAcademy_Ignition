class Zoo
  attr_reader :cages, :employees
  def initialize(name, opening_date, closing_date)
    @name = name
    @opening_date = opening_date
    @closing_date = closing_date
    @cages = []
    install_cages
    @employees = []

  end

  def install_cages
    10.times do
      @cages.push(Cage.new)
    end
  end

  def add_employee(employee)
    @employees << employee
  end

  def open?(date)
    date > @opening_date && date < @closing_date
  end

  def add_animal(animal)
    @cages.each do |cage|
      if cage.empty?
        cage.animal = animal
        return
      end
    end
    return "Your zoo is already at capacity!"
  end

  def visit
    output_string = ""
    @employees.each do |employee|
      output_string += "#{employee.name} waved hello!\n"
    end
    @cages.each do |cage|
      if cage.animal != nil
        output_string += "#{cage.animal.speak}\n"
      end
    end
    output_string
  end
end
