require 'pry'
require 'date'

require_relative '../config/environment.rb'


user1=User.new("Bob")
user2=User.new("Fred")
user3=User.new("Karen")
ingredient1=Ingredient.new("bread")
ingredient2=Ingredient.new("cheese")
ingredient3=Ingredient.new("carrots")
recipe1=Recipe.new("Chili")
recipe2=Recipe.new("Cake")
recipe3=Recipe.new("Stew")
recipe4=Recipe.new("Beef")

 card1=RecipeCard.new(recipe1,user1,Date.new(2009,5,29),15)
 card2=RecipeCard.new(recipe2,user1,Date.new(2001,5,29),5)
 card3=RecipeCard.new(recipe3,user1,Date.new(2009,5,29),10)
 card4=RecipeCard.new(recipe4,user1,Date.new(20019,5,29),20)
 card5=RecipeCard.new(recipe1,user2,Date.new(2009,5,29),15)



## TESTS FOR USER

puts  " _______ TESTS FOR Initalize ____ "
puts "\n Test1:User.new has name"
puts user1

puts "\n Test2:Ingredient.new has name"
puts ingredient1

puts "\n Test3: RecipeCard.new has name, user, date, and rating"
puts card1.inspect

puts  "\n Test4:user2.add_recipe_card returns a recipe card"
puts user2.add_recipe_card(recipe3,3,10).inspect

puts "\n Test5: user1.top_three_recipes returns Beef, Chili, Stew recipes in order"
puts user1.top_three_recipes.inspect

puts "\n Test6: user1.most_recent_recipe returns recipe called Cake"
puts user1.most_recent_recipe.inspect

puts "\n Test7 user.declare_allergen returns a cheese-bob allergen"
puts  user1.declare_allergen(ingredient2).inspect
user3.declare_allergen(ingredient2)
user2.declare_allergen(ingredient3)

puts "\n Test8 Ingredient.most_common_allergen returns cheese"
  puts  Ingredient.most_common_allergen.inspect

  puts "\n Test9 Recipe.most_popular returns Chili"
  puts  Recipe.most_popular.inspect
# card2=u2.add_recipe_card(recipe,1,10)
