class Customer
  attr_accessor :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name

    @@all << self
  end

  def self.all
    @@all
  end

  def 

  def full_name
    "#{given_name} #{family_name}"
  end
end
