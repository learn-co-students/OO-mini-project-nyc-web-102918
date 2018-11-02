class User

@@all=[]
  def initialize
 @@all <self

 def self.all
   @@all
 end



  def recipecards
    RecipeCard.all.select{|recipecard|recipecard.user==self}
  end

  def recipes
 recipecards.map{|recipecard|recipecard.recipe}
    end
##
  def add_recipe_card(recipe,date,rating)
 RecipeCard.new(recipe,self,date,rating)

  end

  def declare_allergen(ingredient)
    Allergen.new(self,ingredient)
  end

  def user_allergens
    Allergens.all.select{|allergen|allergen.user==self}
  end

  def allergens # gets ingredients
 user_allergens.map{|allergen|allergen.ingredient}
end

 def top_three_recipes
   recipes.sort_by{|recipie_card|recipe_card.rating}[0..2]

 end

 def most_recent_recipe
   recipes.sort_by{|recipie_card|recipe_card.date}[-1]

 end





end # END CLASS
