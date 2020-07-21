class Customer
  attr_accessor :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self 

  end

  def full_name 
    puts "#{given_name} + #{family_name}"
  end

  def self.all 
    @@all
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def num_reviews
    binding.pry
    number_of_reviews = Review.all.count {|reviews| reviews.customer.given_name == self.given_name}
    if number_of_reviews > 1 
      "#{self.given_name} has #{number_of_reviews} reviews"
    else
      "#{self.given_name} has #{number_of_reviews} review"
    end
  end

  def find_by_name(name)
    Customer.all.find {|customer| return customer.full_name if customer.given_name == self.given_name}
  end
  
  def self.find_all_by_given_name(name)
   Customer.all.select{|customer| customer.given_name == name.given_name}

  end

  def add_review( restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  binding.pry
end
