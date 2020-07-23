class Restaurant
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
  end

  def self.all
    @@all 
  end

  def reviews  #incomplete
    #return array of reviews for 1 unique resturant 
    # loop through array of Review.all matching for self
    #once matched, pull out review integer, and return each integer into array
    reviews = Review.all.select do |review|
      review.restaurant_instance == self
    end

    ratings = reviews.map do |review|
      review.rating
    end
    ratings
  end 


  def customers
    # Returns a **unique** list of customers left a review for same restaurant.
    #return an array of customer instances 

    reviews = Review.all.select do |review|
      review.restaurant_instance == self
    end
  
    customer_list = reviews.map do |review|
      
      review.customer_instance
    end 
    
    customer_list.uniq
  end


  

end # end class 

