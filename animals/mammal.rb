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

  def changehealth hp_change
    @health += hp_change
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

end

# catfish = Dog.new
# catfish.walk
# catfish.walk
# catfish.run
# catfish.run
# catfish.pet
# catfish.showhealth
class Lion < Mammal
  def initialize
    @health = 170
  end

  def fly
    changehealth(-10)
  end
  def attack_town
    changehealth(-50)
  end
  def eat_humans
    changehealth(20)
  end
  def showhealth
    puts "This is a lion"
    super
  end
end

lassie = Lion.new
puts 'lassie.attack_town [x3]'
for i in 1..3
  lassie.attack_town
end
puts 'lassie.eat_humans [x2]'
lassie.eat_humans
lassie.eat_humans
lassie.showhealth