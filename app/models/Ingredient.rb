class Ingredient

  attr_accessor :name, :ingredient
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.ingredient == self
    end
  end

  def self.most_common_allergen

    @@all.sort_by { |ingredient| ingredient.allergens.count }[-1]
  end

  def allergen_instances_of_this_ingredient
    Allergen.all.select do |each_allaergen|
      each_allaergen.ingredient == self
    end
  end

  def users_allergic_to_this_ingredient
    self.allergen_instances_of_this_ingredient.map do |each_allergen|
      each_allergen.user
    end
  end



end









# answer = nil
# latest_counter = 0
# @@all.each do |current_ingredient|
#   counter = 0
#   User.all.each do |each_user|
#   if each_user.allergens.include?(current_ingredient)
#     counter+=1
#   end
#     end
#     if counter > latest_counter
#       latest_counter = counter
#       answer = current_ingredient
#     end
#   end
#
# answer
