class RecipeIngredient

  attr_reader :ingredient, :recipe, :spice_level

  @@all = []

  def initialize(ingredient, recipe, spice_level)
    @@all << self
    @ingredient = ingredient
    @recipe = recipe
    @spice_level = spice_level
  end

  def self.all
    @@all
  end

end
