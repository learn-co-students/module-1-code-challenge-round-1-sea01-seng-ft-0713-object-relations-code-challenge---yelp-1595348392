require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


0 #leave this here to ensure binding.pry isn't the last line


# customer : initialize(given_name, family_name)


lucas = Customer.new("Lucas", "Leiberman")
gabi = Customer.new("Gabi", "Sanchez")
eric = Customer.new("Eric", "LLeiberman")

restaurant1 = Restaurant.new("Prima")
restaurant2 = Restaurant.new("DQ")
restaurant3 = Restaurant.new("Saltwater")


# review = initialize(customer, restaurant, rating)

review1 = Review.new(lucas, restaurant1, 5)
review2 = Review.new(gabi, restaurant2, 7)
review3 = Review.new(lucas, restaurant2, 10)
review4 = Review.new(eric, restaurant3, 4)
review5 = Review.new(eric, restaurant1, 3)
review6 = Review.new(gabi, restaurant3, 8)


binding.pry
