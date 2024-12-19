class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    self.save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  #Data return instance methods:
  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def customers
    reviews.map { |review| review.customer }.uniq
  end

  def ratings
    reviews.map { |review| review.rating }
  end

  def average_star_rating
    ratings.sum.to_f / ratings.length.to_f
  end
end
