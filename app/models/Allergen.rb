class Allergen

  attr_reader :ingredient, :user, :type

  @@all = []

  def initialize(ingredient, user, type)
    @@all << self
    @ingredient = ingredient
    @user = user
    @type = type
  end

  def self.all
    @@all
  end

end
