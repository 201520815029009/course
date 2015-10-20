class Dessert
  def initialize(name, calories)
    # your code here
    @name = name
    @calories = calories
  end
  
  def name
    @name
  end

  def calories
    @calories
  end

  def name=(value)
    @name = value
  end

  def calories=(value)
    @calories = value
  end
  
  def healthy?
    # your code here
    if @calories<200
	    return true
    else
	    return false
    end
  end
  
  def delicious?
    # your code here
    return true
  end
end


class JellyBean < Dessert
  def initialize(flavor)
    # your code here
    @flavor=flavor
    @name = flavor+" jelly bean"
    @calories = 5
  end
  
  def flavor
    @flavor
  end

  def flavor=(value)
    @flavor = value
  end
  
  def delicious?
    # your code here
    if @flavor =="licorice"
	    return false
    else
	    return true
    end
  end
  
end

