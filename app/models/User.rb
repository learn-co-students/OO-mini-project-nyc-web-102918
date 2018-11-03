class User
attr_accessor :name
  @@all=[]
    def initialize(name)
   @@all << self
   @name = name

end

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
 card1=RecipeCard.new(recipe,self,date,rating)
card1
  end

  def declare_allergen(ingredient)
    Allergen.new(self,ingredient)
  end

  def user_allergens
    Allergens.all.select{|allergen|allergen.user==self}
  end

  def allergens # gets ingredients user is allergic to
 user_allergens.map{|allergen|allergen.ingredient}
end

 def top_three_recipes
   sorted_cards=recipecards.sort_by{|recipe_card|recipe_card.rating}.reverse[0..2]
   sorted_cards.map{|recipe_card|recipe_card.recipe}

 end

 def most_recent_recipe
   recent_recipe=recipecards.sort_by{|recipe_card|recipe_card.date}[0]
recent_recipe.recipe
 end





end # END CLASS
