require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# initialize(given_name, family_name)
person1 = Customer.new("Brad", "Beggs")
person2 = Customer.new("Peter", "Beggs")
person3 = Customer.new("Joy", "Beggs")



# resturant initialize(name)
restaurant1 = Restaurant.new("The Place")
restaurant2 = Restaurant.new("The Other")
restaurant3 = Restaurant.new("The Last")

# reviews (joiner) initialize(rating, customer, restaurant)
review1 = Review.new(5, person1, restaurant1)
review2 = Review.new(3, person2, restaurant2)
review3 = Review.new(1, person3, restaurant3)
review4 = Review.new(1, person1, restaurant3)
review5 = Review.new(1, person2, restaurant2)
review6 = Review.new(1, person3, restaurant1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line