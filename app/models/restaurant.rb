

class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.new(self)

  
  end

end
