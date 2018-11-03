class Recipe
  attr_accessor :name
@@all=[]

def initialize (name)
  @name = name
  @@all << self

end

 def self.all
   @@all
 end

 def self.most_popular
   highest=0
   highest_recipe=nil
   self.all.each{|recipe|if recipe.users.length>highest
     highest=recipe.users.length
     highest_recipe=recipe
   end

   }
   highest_recipe
 end

def recipecards
  RecipeCard.all.select{|recipecard|recipecard.recipe==self}
end


def users
  recipecards.map{|recipecard|recipecard.user}
end

def recipe_ingredients
  RecipeIngredient.all.select{|recipe_ingredient|recipe_ingredient.recipe==self}
end

def ingredients
  recipe_ingredients.map{|recipe_ingredient|recrecipe_ingredient.ingredient}
end

def allergens
  ingredients.select{|ingredient|Allergen.all.include?(ingredient)}
end

def add_ingredients(ingredient_instances)
ingredient_instances.each{Recipe_ingredient.new(self, ingredient)}

end



end ### END OF CLASS
