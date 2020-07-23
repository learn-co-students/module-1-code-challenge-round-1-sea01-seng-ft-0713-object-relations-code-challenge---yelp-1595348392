class Review
  attr_accessor :rating
  attr_reader :customer_instance, :restaurant_instance
  @@all = [] 

  def initialize(rating, customer_instance, restaurant_instance)
    @rating = rating
    @customer_instance = customer_instance
    @restaurant_instance = restaurant_instance

    @@all << self
  end 

  def self.all
    @@all
  end 

   


end # end class



# ***   *** - `Review#restaurant`
#   - returns the restaurant object for that given review
#   - Once a review is created, should not be able to change the restaurant <---seperate reader and writer