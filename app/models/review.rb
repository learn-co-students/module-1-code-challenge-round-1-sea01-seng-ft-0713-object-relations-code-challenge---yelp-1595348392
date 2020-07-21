class Review
    @@all = []

    attr_accessor :customer, :restaurant, :rating
  def initialize(customer, restaurant, rating)
    @customer = customer 
    @restaurant = restaurant 
    @rating = rating 

    @@all << self 
  end 

  def self.all 
    @@all
  end

  def test_method
    binding.pry
  end

end