require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

deru = Restaurant.new("Deru")
hectors = Restaurant.new("Hector's Restaurant")
isarn = Restaurant.new("Isarn")

naty = Customer.new("Naty", "Rabin")
erica = Customer.new("Erica", "Sui")
nir = Customer.new("Nir", "Swissa")

review1 = Review.new(naty, deru, 9)
review2 = Review.new(erica, hectors, 6)
review3 =  Review.new(nir, hectors, 5)
review4 =  Review.new(nir, isarn, 9)
review5 =  Review.new(naty, isarn, 7)
review6 =  Review.new(erica, isarn, 8)
review7 =  Review.new(erica, isarn, 9)






binding.pry
0 #leave this here to ensure binding.pry isn't the last line