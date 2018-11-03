class User

  attr_accessor :date, :rating, :user, :recipe, :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_recipe_card(date, rating, recipe)
    RecipeCard.new(date, rating, self, recipe)
  end

  def recipe_cards
    RecipeCard.all.select do |each_recipecard|
      each_recipecard.user == self
    end
  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.user == self
    end
  end

  def recipes
    self.recipe_cards.map do |my_recipecards|
      my_recipecards.recipe
    end
  end

  def declare_allergen(ingredient)
    Allergen.new(self,ingredient)
  end

  def most_recent_recipe
    self.recipes.last
  end

  def top_three_recipes
    answer_array = []
  answer =  self.recipe_cards.sort_by do |each_recipecard|
      each_recipecard.rating
    end
    answer_array = [answer[-1], answer[-2], answer[-3]]
  end


end
