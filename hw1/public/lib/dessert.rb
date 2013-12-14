class Dessert
  attr_accessor :name, :calories
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def healthy?
    @calories < 200 # less than 200 is healthy
  end
  def delicious?
    true # all desserts are delicious
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    @calories = 5
    @flavor = flavor
    @name = flavor + " jelly bean"
  end
  
  def flavor
    @flavor
  end
  
  def flavor=(flavor)
    @flavor = flavor
    @name = @flavor + " jelly bean"
  end
  
  # overriding example
  def delicious? 
    return true if @flavor != "licorice"
  end
end
