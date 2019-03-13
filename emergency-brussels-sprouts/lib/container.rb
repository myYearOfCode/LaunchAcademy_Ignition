class Container
  attr_reader :weight, :maximum_holding_weight
  def initialize(weight, maximum_holding_weight)
    @weight = weight
    @maximum_holding_weight = maximum_holding_weight
    @ingredients = []
  end

  def ingredients
    return @ingredients
  end

  def fill_with_ingredient(ingredient)
    count = (@maximum_holding_weight/ingredient.weight).floor
    count.times do
      @ingredients.push(ingredient)
    end
    @weight += (ingredient.weight*count)
  end

  def which_ingredient
    return @ingredients[0].name
  end

  def how_many_ingredients
    return @ingredients.length
  end

  def remove_one_ingredient
    @weight -= (@ingredients.pop().weight)
  end

  def empty
    @weight -= ingredients.length*ingredients[0].weight
    @ingredients = []
  end
end
