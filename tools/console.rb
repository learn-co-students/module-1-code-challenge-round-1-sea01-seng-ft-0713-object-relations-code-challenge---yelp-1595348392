require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
nathan = Customer.new("Nathan", "Chung")
nathan_b = Customer.new("Nathan", "Ballston")
ahmed = Customer.new("Ahmed", "Gaber")
john = Customer.new("John", "Doe")
stacey = Customer.new("Stacey", "Chang")
karen = Customer.new("Karen", "Go")

cfa = Restaurant.new("Chic-fil-a")
arbys = Restaurant.new("Arbys")
mcd = Restaurant.new("McDonalds")

nathan_cfa = Review.new(nathan, cfa, 4)
nathan_mcd = Review.new(nathan, mcd, 5)
nathan_arbys = Review.new(nathan, arbys, 1) #cold roast beef when ordered hot
ahmed_cfa = Review.new(ahmed, cfa, 3)
john_mcd = Review.new(john, mcd, 1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line