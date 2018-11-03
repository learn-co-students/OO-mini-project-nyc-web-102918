class Ingredient

  attr_reader :name

  @@all = []

  def initialize(name)
    @@all << self
    @name = name
  end

  def self.all
    @@all
  end

  def recipe_ingredients
    RecipeIngredient.all.select do |recipe_ingredient| recipe_ingredient.ingredient == self
    end
  end

  def recipes
    recipe_ingredients.map do |recipe_ingredient| recipe_ingredient.recipe
    end
  end

  def related_allergens
    Allergen.all.select do |allergen|
      allergen.ingredient == self
    end
  end

  def allergic_users
    related_allergens.map do |allergen|
      allergen.user
    end
  end

  def self.most_common_allergen
    most_common_count = 0
    most_common_allergen = nil
    self.all.each do |ingredient|
      count = ingredient.related_allergens.length
      if count > most_common_count
        most_common_count = count
        most_common_allergen = ingredient
      end
    end
    most_common_allergen
  end

end
