class Review
  attr_reader :customer, :restaurant, :rating

  @@all = []

  def initialize(customer, restaurant, rating)
    @customer, @restaurant, @rating = customer, restaurant, rating

    self.save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
end