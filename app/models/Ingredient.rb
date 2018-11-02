class Ingredient
@@all=[]
   def initialize
     @@all << self
   end

def self.all
  @@all
end

# def unique_ingredients
# ingredients_with_allergies
# Allergies.all.map{|allergen|
#   if ! ingredients_with_allergies.contain?(allergen.ingredient)
#     ingredients_with_allergies << allergen.ingredient
# }
# end

def count_users
Allergens.all.select{|allergen|allergen.ingredient==self}.length
end

def self.most_common_allergen
  most_users=0
  most_users_ingredient=nil
  self.all.each{
    |ingredient|
    if ingredient.count_users>most_users
      most_users=ingredient.count_users
      most_users_ingredient=ingredient
  }
most_users_ingredient
}

end




end # end ingredient class
