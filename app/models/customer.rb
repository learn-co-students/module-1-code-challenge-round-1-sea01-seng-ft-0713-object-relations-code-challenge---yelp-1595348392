class Customer
  attr_accessor :given_name, :family_name
  # given is frst name and family name is last name

  @@all = [] 

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name

    @@all << self
  end

  def full_name
    # - returns the full name of the customer, with the given name and the family name concatenated, Western style.
    "#{given_name} #{family_name}"
  end


  def self.all
    @@all
  end

  
  def unique_restaurants
    #Returns a **unique** array of all restaurants a customer has reviewed
    customers = Review.all.select do |customer|
       customer.customer == self
     end

     restaurant_list = customers.select do |restaurant|
      restaurant.restaurant
     end

     restaurant_list.uniq
     binding.pry
  end

 
end #end class

# ***   *** #### Customer
# ***   *** - `Customer#restaurants`

#   - Returns a **unique** array of all restaurants a customer has reviewed

# ***   *** - `Customer#add_review(restaurant, rating)`
#   - given a **restaurant object** and a star rating (as an integer), creates a new review 
#   and associates it with that customer and restaurant.





