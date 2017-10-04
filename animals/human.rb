puts "the human file says, FIRST!#"
require_relative "mammal"

class Human < Mammal
    def intialize
        puts self.description
    end
end

guy1 = Human.new
guy1.description