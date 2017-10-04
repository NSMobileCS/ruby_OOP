class Human
    
    def initialize(strength=3, stealth=3, intelligence=3, health=100)
        @strength = strength
        @stealth = stealth
        @intelligence = intelligence
        @health = health
    end

    def health_up(hp)
        @health += hp
    end

    def health_down(damage)
        puts damage
        puts @health
        @health -= damage
        puts @health
    end

    def attack(opponent, damage=10)
        if opponent.class.ancestors.include?(Human)
            puts "attacking opponent (hp damage: #{ damage })"            
            opponent.health_down(damage)
        end
    end

    def show_health
        puts @health
    end
end

ninja = Human.new
some_jerk = Human.new
some_jerk.show_health

some_jerk.attack(ninja, 3)
ninja.attack(some_jerk, 50)
some_jerk.show_health
ninja.show_health
