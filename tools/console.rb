require_relative '../config/environment.rb'

require 'pry'

def reload
  load 'config/environment.rb'
end

pete = Customer.new("Pete", "Smith")
andrea = Customer.new("Andrea", "Marie")

rev = Review.new("Pete", "Buffalo Wild Wings", 2.5)
rev2 = Review.new("Andrea", "Buffalo Wild Wings", 3.0)
rev3 = Review.new("Pete", "Altura", 5.0)


bww = Restaurant.new("Buffalo Wild Wings")
altura = Restaurant.new("Altura")

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line