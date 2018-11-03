class User

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
      recipe_card.user == self
    end
  end

  def recipes
    recipe_cards.map do |recipe_card|
      recipe_card.recipe
    end
  end

  def related_allergens
    Allergen.all.select do |allergen|
      allergen.user == self
    end
  end

  def allergens
    related_allergens.map do |allergen|
      allergen.ingredient
    end
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def declare_allergen(ingredient, type)
    Allergen.new(ingredient, self, type)
  end

  def top_three_recipes
    sorted_cards = recipe_cards.sort_by do |recipe_card|
      recipe_card.rating
    end
    sorted_cards.reverse[0..2].map do |recipe_card|
      recipe_card.recipe
    end
  end

  def most_recent_recipe
    sorted_cards = recipe_cards.sort_by do |recipe_card|
      recipe_card.date
    end
    sorted_cards.reverse[0].recipe
  end


end
