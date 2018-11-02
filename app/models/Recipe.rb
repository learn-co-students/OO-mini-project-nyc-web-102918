

class Recipe

  attr_accessor :ingredient

  @@all =[]

  def initialize(ingredient)
    @ingredient = ingredient
    @@all << self
  end

  #return all of the recipe instances
  def self.all
    @@all
  end

  #return the recipe instance with the
  #highest number of users
  #(the recipe that has the most recipe cards)
  def self.most_popular
    self.all.select do |recipe|
      RecipeCard.user
    end
    #return
  end

  #return the user instances who have
  #recipe cards with this recipe
  def users
    RecipeCards.all.map do |recipecard|
        recipecard.recipe == self
        recipecard.user
    end
  end

  #return all of the ingredients
  #in this recipe
  def ingredients
    self.ingredients
  end

  #return all of the ingredients
  #in this recipe that are allergens
  def allergens

  end

  #take an array of ingredient instances
  #as an argument, and associate each
  #of those ingredients with this recipe
  def add_ingredients(ingredient)

  end

end
