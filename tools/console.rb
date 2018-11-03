require_relative '../config/environment.rb'

user1 = User.new("Vibhu")
recipe1 = Recipe.new("pasta")
recipe2 = Recipe.new("Chaat")
recipe3 = Recipe.new("Hot Dog")
recipe4 = Recipe.new("Pizza")
recipe5 = Recipe.new("Indian Chicken")
ingredient1 = Ingredient.new("cheese")



user2 = User.new("Ron")
user3 = User.new("Ash")
user4 = User.new("Bharat")
user5 = User.new("Monkey")

user6 = User.new("Nirma")

ingredient4 = Ingredient.new("pesto")
ingredient5 = Ingredient.new("CREAM")

ingredient7 = Ingredient.new("Masala")
ingredient8 = Ingredient.new("buns")







ingredient2 = Ingredient.new("oregano")
# ingredient3 = Ingredient.new("bread")
user1.declare_allergen(ingredient1)
recipeIngredient1 = RecipeIngredient.new(ingredient1, recipe1)
recipeIngredient2 = RecipeIngredient.new(ingredient4, recipe1)
recipeIngredient3 = RecipeIngredient.new(ingredient5, recipe1)

user6.declare_allergen(ingredient5)


recipe1.add_ingredients([ingredient2])
recipe2.add_ingredients([ingredient7])
recipe3.add_ingredients([ingredient8])
user2.declare_allergen(ingredient5)
user3.declare_allergen(ingredient5)
# user2.declare_allergen(ingredient1)
# user3.declare_allergen(ingredient1)

recipecard1 = RecipeCard.new("1st Jan",5,user1,recipe1)
recipecard3 = RecipeCard.new("45 Feb",5,user6,recipe3)
recipecard2 = RecipeCard.new("12 Feb",7,user6,recipe2)
recipecard4 = RecipeCard.new("29 Mar",8,user6,recipe4)
recipecard5 = RecipeCard.new("30 May",10,user6,recipe5)


binding.pry
