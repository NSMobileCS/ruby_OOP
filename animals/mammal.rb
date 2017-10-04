class Mammal
  def initialize
      @health = 150
  end

  def display_health
    showhealth
  end

  def showhealth
    puts @health
  end
end

class Dog < Mammal
  def pet
    changehealth(5)
  end

  def walk
    changehealth(-1)
  end

  def run
    changehealth(-10)
  end
  
  def changehealth hp_change
    @health += hp_change
  end

end

catfish = Dog.new
catfish.walk
catfish.walk
catfish.run
catfish.run
catfish.pet
catfish.showhealth
