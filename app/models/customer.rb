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

  
  def restaurants
    #Deliverable returns a **unique** array of all restaurants a customer has reviewed
    #return array with review instances one customer wrote for any restaurant 
    reviews = Review.all.select do |review|
      review.customer_instance == self
      
    end
    binding.pry
    restaurant_list = reviews.map do |review|
      review.restaurant_instance 
    end

    restaurant_list.uniq
  end

  def add_review(rest_instance, rating)
    # Deliverable: given a restaurant object and a star rating (as an integer), creates a new review 
  #  associates it with that customer and restaurant
    # Brad's version: 
    # method takes 2 agruements
    # assciates the 2 arguements and self using the Review.new class method. 
    # returns a new review instance implicilty 
    
    Review.new(rating, self, rest_instance)
  end

  def num_reviews
    # Deliverable Returns the total number of reviews that a customer has authored  
    # Brad: return is the integer of the gross count 'review instances' by a single person
    reviews = Review.all.select do |review|
      review.customer_instance == self
    end
    binding.pry

    ratings = reviews.map do |review|
      review.rating
    end

    ratings.size # number of ratings
  end


  def self.find_by_name(name)
    # Deliverable: given a string of a **full name**, returns the **first customer** whose full name matches.
    # Brad:class method, returns the full given and family using full_name instance method

    # full name needs split into an array of index size of 2 to get given name and family name
    name_split = name.split
    
    # using idex[0] as given name, .find on Customer.all

    matching_customer = Customer.all.find do |customer|
      name_split[0] == customer.given_name && name_split[1] #== customer.family_name
    end
  end

  def self.find_all_by_given_name(name)
    # Deliverable: given a string of a given name, returns an **array** containing all customers with that given name
    # Brad: return array of customer instances that have the same given_name
    
    Customer.all.find_all do |customer|
      customer.given_name == name
    end

  end



 
end #end class








