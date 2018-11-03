class RecipeCard

  attr_reader :user, :recipe, :date
  attr_accessor :rating

  @@all = []

  def initialize(user, recipe, date, rating)
    @@all << self
    @user = user
    @recipe = recipe
    @date = date
    @rating = rating
  end

  def self.all
    @@all
  end

end
