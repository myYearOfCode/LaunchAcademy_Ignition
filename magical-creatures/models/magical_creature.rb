class MagicalCreature
  attr_reader :name, :magicalAbility, :age
  def initialize(name, magicalAbility, age = nil)
    @name = name
    @magicalAbility = magicalAbility
    @age = age
  end

  def ancient?
    if @age == nil
      return true
    elsif @age <= 200
      return false
    end
    return true
  end
end
