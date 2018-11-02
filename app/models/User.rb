

class User
  attr_accessor :name

  @@all =[]
  @allergen = []

  def initialize(name)
    @@all << self
    @name = name

  end

  #return all of the user instances
  def self.all
    @@all
  end

  #return all of the recipes this user has recipe cards for
  def recipes
    RecipeCard
  end

  #accept a recipe instance as an argument, as well as
  #a date and rating, and create a new recipe card
  #for this user and the given recipe
  def add_recipe_card(user,recipe, date, rating)
    new_recipe_card = RecipeCard.new(self, recipe, date, rating)
    new_recipe_card
  end

  #accept an ingredient instance as an argument,
  #and create a new allergen instance for this user
  #and the given ingredient
  #creates an allergy instance for me
  def declare_allergen(ingredient, user) #does user need to be passed in bc its self?
    Allergen.new(ingredient, self)
  end

  #return all of the ingredients this user is allergic to
  def allergens
    # declare_allergen(ingredient, self).map do |allergen|
    #   allergen
    #
    Allergen.all.select do |allergen|
      allergen.user == self
    end
  end

  def ingredients_that_i_am_allergic_to
    self.allergens.map do |allergen|
      allergen.ingredient
    end
  end

  #return the top three highest rated recipes for this user.
  def top_three_recipes
  end

  #return the recipe most recently added to the user's cookbook.
  def most_recent_recipe
  end

end
