require_relative '../config/environment.rb'


user1 = User.new("Bob")
user2 = User.new("Tim")
user3 = User.new("Paul")

recipe1 = Recipe.new("Chili")
recipe2 = Recipe.new("Stew")
recipe3 = Recipe.new("Cake")
recipe4 = Recipe.new("Lasanga")

recipe_card1 = RecipeCard.new(user1, recipe1, 11, 10)
recipe_card2 = RecipeCard.new(user1, recipe2, 4, 3)
recipe_card3 = RecipeCard.new(user1, recipe3, 5, 16)
recipe_card4 = RecipeCard.new(user1, recipe4, 7, 11)
recipe_card5 = RecipeCard.new(user2, recipe3, 6, 6)

ingredient1 = Ingredient.new("Tomatoes")
ingredient2 = Ingredient.new("Cheese")
ingredient3 = Ingredient.new("Pasta")

recipe_ingredient1 = RecipeIngredient.new(ingredient1, recipe4, 3)
recipe_ingredient2 = RecipeIngredient.new(ingredient2, recipe4, 1)
recipe_ingredient3 = RecipeIngredient.new(ingredient3, recipe4, 2)

allergen1 = Allergen.new(ingredient2, user2, "Lactose")
allergen2 = Allergen.new(ingredient1, user3, "Gluten")
allergen3 = Allergen.new(ingredient2, user1, "Lactose")

binding.pry

puts "Hello"
