module Monster
  
  class Dragon
    attr_accessor :health, :attack_power, :defense, :skills, :level

    def initialize
      @health = 10000     #if this runs out the dragon is dead
      @level = Random.rand(60..100)
      @attack_power = 100 + (.25*@level) #percentage which modifies the damage done by a skill
      @defense = 100 #percentage which modifies the damage taken
      @skills = [flame_breath, fly, slash, stomp] #these skills do different damage
    end

    def attack opponent, skill
      puts "Attacked #{opponent.name} with #{skill}."
    end

    def lost_health is_attacked, damage
      if is_attacked
        @health -= damage
      end
    end

    def 
        
        
      
