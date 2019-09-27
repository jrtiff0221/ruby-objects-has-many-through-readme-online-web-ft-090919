class Waiter

  attr_accessor :name, :years_experience

  @@all = []
  def initialize(name, years_experience)
    @name = name 
    @years_experience = years_experience
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
   def new_meal(waiter, total, tip=0)
    Meal.new(waiter, self, total, tip)
  end
  
end