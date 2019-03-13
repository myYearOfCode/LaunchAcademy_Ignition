class Ingredient
  attr_reader :name, :weight
  def initialize(name, weight)
    @name = name
    @weight = weight
    # if name == "Cheesy Poof"
    #   @weight = 0.5
    # elsif name == "Brussels Sprouts"
    #   @weight = 20
    # end
  end

  def self.create_from_grams(name,weight_in_grams)
    return Ingredient.new(name, weight_in_grams/1000)
  end

end
