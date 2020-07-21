class Customer
  attr_accessor :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name, @family_name = given_name, family_name

    self.save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  #Relationship methods:
  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  #Data return instance methods:
  def full_name
    "#{given_name} #{family_name}"
  end

  def reviews
    Review.all.select { |review| review.customer == self }
  end

  def restaurants
    reviews.map { |review| review.restaurant }.uniq
  end

  def num_reviews
    reviews.length
  end

  #Class methods for aggregating data:
  def self.find_by_name(full_name)
    self.all.find { |customer| customer.full_name == full_name }
  end

  def self.find_all_by_given_name(given_name)
    self.all.select { |customer| customer.given_name == given_name }
  end
end
