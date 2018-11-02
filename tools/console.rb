require_relative '../config/environment.rb'
require 'pry'

u1 = User.new("Noelle")
u2 = User.new("Mandy")
u3 = User.new("Mike")
u4 = User.new("Bob")


i1 = Ingredient.new('jelly')
i2 = Ingredient.new('ham')
i3 = Ingredient.new('kiwi')
i4 = Ingredient.new('beef')

r1 = Recipe.new(i2)
r2 = Recipe.new(i3)
r3 = Recipe.new(i4)
r4 = Recipe.new(i1)


rc1 = RecipeCard.new(u1, r1, "Nov 1", 3)
rc2 = RecipeCard.new(u4, r3, "Nov 3", 1)
rc3 = RecipeCard.new(u2, r3, "Jan 3", 34)
rc4 = RecipeCard.new(u1, r2, "Dec 18", 6)

recipe_ingredient1 = RecipeIngredient.new(r1, i1)
recipe_ingredient2 = RecipeIngredient.new(r4, i3)
recipe_ingredient3 = RecipeIngredient.new(r2, i4)
recipe_ingredient4 = RecipeIngredient.new(r1, i3)


a1 = Allergen.new(i1, u1)
a2 = Allergen.new(i3, u4)
a3 = Allergen.new(i4, u2)
a4 = Allergen.new(i2, u1)


binding.pry
0
