class Recipe

  attr_reader :name

  @@all = []

  def initialize(name)
    @@all << self
    @name = name
  end

  def self.all
    @@all
  end

  def recipe_cards
    RecipeCard.all.select do |recipe_card|
      recipe_card.recipe == self
    end
  end

  def users
    recipe_cards.map do |recipe_card|
      recipe_card.user
    end
  end

  def recipe_ingredients
    RecipeIngredient.all.select do |recipe_ingredient|
      recipe_ingredient.recipe == self
    end
  end

  def ingredients
    recipe_ingredients.map do |recipe_ingredient|
      recipe_ingredient.ingredient
    end
  end

  def add_ingredients(ingredients_array)
    ingredients_array.each do |ingredient|
      RecipeIngredient.new(ingredient, self, 3)
    end
  end

  def self.most_popular
    most_popular_count = 0
    most_popular_recipe = nil
    self.all.each do |recipe|
      count = recipe.recipe_cards.length
      if count > most_popular_count
        most_popular_count = count
        most_popular_recipe = recipe
      end
    end
    most_popular_recipe
  end

  def allergens
    ingredients.select do |ingredient|
      Allergen.all.each do |allergen|
        allergen.ingredient == ingredient
      end
    end
  end

end
