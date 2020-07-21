class Review

    attr_accessor :customer, :restaurant, :rating


    @@all = []

    def initialize(customer, restaurant, rating)
        @customer= customer
        @restaurant= restaurant
        @rating= rating

        @@all << self
    end

    def self.all
        @@all
    end

    def customer(rating)
        binding.pry
        #@@all.select {|rating| rating.}
       
    end
    

    def restaurant

    end

  
end