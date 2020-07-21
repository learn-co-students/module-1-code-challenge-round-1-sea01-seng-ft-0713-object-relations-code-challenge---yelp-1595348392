class Restaurant
  @@all = []
  attr_reader :name
  attr_accessor :review

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    binding.pry
    customer_reviews = Review.all.select {|reviews| reviews.restaurant == self}
    customer_reviews
  end

  # def customers 
  #   binding.pry
  #   Review.all.select {|reviews|
  #     if reviews.restaurant.name == self.name return reviews.customer
  #     end }
      
  #  end
    
  #whatdoiiwant?


  binding.pry

  def average_star_rating
    binding.pry
    Review.all.select {|reviews| reviews.restaurant == self}
    
    #add up all ratings and divine by the .count of instances of reviews
  end

end
