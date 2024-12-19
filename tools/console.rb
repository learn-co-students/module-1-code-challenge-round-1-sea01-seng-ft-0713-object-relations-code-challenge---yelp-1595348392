require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

mike = Customer.new("Mike", "Roberts")
sarita = Customer.new("Sarita", "Punjabi")
roland = Customer.new("Roland", "Berthould")

tmr = Restaurant.new("The Midnight Run")
fdc = Restaurant.new("Fogo de Chao")

test_one = mike.add_review(tmr, 5)
test_two = mike.add_review(tmr, 6)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line