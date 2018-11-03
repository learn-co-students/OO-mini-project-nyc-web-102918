class Recipe

attr_accessor :ingredient, :name
@@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  def recipe_cards
    RecipeCard.all.select do |each_recipecard|
      each_recipecard.recipe == self
    end
  end

  def users
    self.recipe_cards.map do |my_recipecards|
      my_recipecards.user
    end
  end

  def my_recipeIngredients
    RecipeIngredient.all.select do |each_recipeIngredient|
      each_recipeIngredient.recipe == self
    end
  end

  def ingredients
    my_recipeIngredients.map do |each_recipeIngredient|
      each_recipeIngredient.ingredient
    end
  end

  def add_ingredients(array_ing)
    array_ing.each do |each_ingredient|
    RecipeIngredient.new(each_ingredient, self)
    end
  end

  def self.most_popular
    answer = nil
    counter = 0
    @@all.each do |each_recipe|
      if  each_recipe.users.length > counter
        counter = each_recipe.users.length
        answer = each_recipe
      end
    end
    answer
  end




end
