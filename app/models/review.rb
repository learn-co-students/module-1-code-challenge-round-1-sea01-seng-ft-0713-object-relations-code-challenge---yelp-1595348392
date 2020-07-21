class Review
  attr_accessor :rating
  attr_reader :customer, :restaurant
  @@all = [] 

  def initialize(rating, customer, restaurant)
    @rating = rating
    @customer = customer
    @restaurant = restaurant

    @@all << self
  end 

  def self.all
    @@all
  end 

   


end # end class



# ***   *** - `Review#restaurant`
#   - returns the restaurant object for that given review
#   - Once a review is created, should not be able to change the restaurant <---seperate reader and writer