class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    customer_list = reviews.select.uniq do |review|
      review.customer
    end
  end

  def average_star_rating
    sum =  self.reviews.sum {|review| review.rating }
    count = self.reviews.count {|review| review.rating}
    average = sum / count
    average.to_f
  end
  
  end
