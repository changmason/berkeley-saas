# saas-class hw1 - part 4

# (a)
class Dessert
  attr_accessor :name, :calories
  
  def initialize(name, calories)
    @name = name 
    @calories = calories
  end
  
  def healthy?
    calories < 200
  end
  
  def delicious?
    true
  end
end

# (b)
class JellyBean < Dessert
  attr_accessor :flavor
  
  def initialize(name, calories, flavor)
    super(name, calories)
    @flavor = flavor
  end
  
  def delicious?
    if self.flavor == "black licorice"
      false
    else
      super
    end
  end
end
