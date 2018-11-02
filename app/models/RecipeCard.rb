

class RecipeCard

  attr_accessor :user, :recipe, :date, :rating

  @@all = []

  def initialize(user, recipe, date, rating)
    @user = user
    @recipe = recipe
    @date = date
    @rating = rating
  end

  #return all of the RecipeCard instances
  def self.all
    @@all
  end

  #return the date of the entry
  # def date
  # end

  # return the rating (an integer)
  #a user has given their entry
  # def rating
  # end

  #return the user to which the entry belongs
  # def user
  # 
  # end

  # return the recipe to which the entry belongs
  # def recipe
  #
  # end

end
