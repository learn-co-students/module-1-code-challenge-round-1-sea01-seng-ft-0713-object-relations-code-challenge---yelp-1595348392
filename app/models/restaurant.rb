class Restaurant
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
  end

  def self.all
    @@all 
  end

  def reviews_of_unique_restaurant  #incomplete
    #return array of reviews for 1 unique resturant 
    # loop through array of Review.all matching for self
    #once matched, pull out review integer, and return each integer into array
    restaurants = Review.all.select do |review|
      review.restaurant == self
    end

    reviews = restaurants.select do |review|
      review.restaurant.rating
    end
  end 

  def customers_who_reviewed_a_unique_restaurant
    # Returns a **unique** list of customers left a review for same restaurant.

    restaurants = Review.all.select do |restaurant|
      restaurant.restaurant == self
    end
  
    customer_list = restaurants.select do |customer|
      binding.pry
      customer.customer
    end 
    
    customer_list.uniq
  end


  def customers
    #Returns a **unique** list of all customers who have reviewed a particular restaurant.
    resturants = Review.all.select do |restaurant|
      restaurant.restaurant == self
    end

    customers_list = resturants.select do |customer|
     customer.customer
    end

    customers_list.uniq
 end

 

end # end class 

