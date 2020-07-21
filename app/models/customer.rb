class Customer
  attr_accessor :given_name, :family_name
@@all= []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def restaurants # not finished
    Review.all.select do |review|
    review.customer == self  |rev| do 
      rev.restaurant
    end
  end
    binding.pry


  end
    def add_review (restaurant, rating)
      Review.new(self, restaurant, rating)
    end

    def num_reviews
      Review.all.count {|review|review.customer == self}
    end

    # def self.find_by_name(name)
    #   @@all.find {|customer| costumer.}
    # end

    def self.find_all_by_given_name(name)
      @@all.select {|customer| customer.given_name == name}
    end


    binding.pry
  end
