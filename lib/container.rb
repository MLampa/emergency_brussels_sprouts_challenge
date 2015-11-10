
class Container
  attr_reader :weight, :total_weight, :maximum_holding_weight, :ingredients, :which_ingredient
  def initialize(weight, maximum_holding_weight)
    @weight = weight
    @maximum_holding_weight = maximum_holding_weight
    @ingredients = []
  end

  def fill_with_ingredient(ingredient)
    total_ingredient =  (maximum_holding_weight / ingredient.weight).to_i
    total_ingredient.times {|i| @ingredients << ingredient}
    @weight += maximum_holding_weight
  end

  def which_ingredient
    "#{@ingredients.first.name}s"
  end

  def how_many_ingredients
    @ingredients.count
  end

  def remove_one_ingredient
    @ingredients.pop
  end

  def empty
    @ingredients = []
  end
end
