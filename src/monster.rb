class Monster #super class monster that contains methods that other types of monsters
              #may use
  def initialize
  end

  #opponent is an object of the type Monster that tells the monster what attacked it
  #skill is a variable that tells the monster what skills was used to attack it
  #the attack method tells the Monster if it was attacked, and how much damage was done
  def attack opponent, skill
    puts "Attacked #{opponent.name} with #{skill}"
    damage_done = attack_power*skill - defense
  end

  #is_attacked parameter is a boolean that tells the monster if it was attacked
  #damage is the parameter that tells the monster how much damage was done
  #the  method lost_health checks if the monster was attacked, then subtracts the
  #amount of damage done from the health
  def lost_health is_attacked, damage 
    if is_attacked
      @health -= damage - damage*0.25
    else
      @health
    end
  end

end

  



class Dragon < Monster   #at low levels you do not want to run into a dragon, won't be able to do damage to it
                         #at least currently
  attr_accessor :health, :attack_power, :defense, :skills, :level, :name

  def initialize
    @name = "Dragon"
    @level = Random.rand(60..100)  #dragons are high leveled creatures, there can be different leveled dragons
    @health = 1000 + 0.25*@level     #if this runs out the dragon is dead
        @attack_power = 0.25*@level #percentage which modifies the damage done by a skill, depends on the level of the monster
    @defense = 100 + 0.2*@level #percentage which modifies the damage taken
    @skills = [flame_breath, fly, slash, stomp] #these skills do different damage 
  end

end

class Slime < Monster
  attr_accessor :health, :attack_power, :defense, :skills, :level, :name

  def initialize
    @name = "Slime"
    @level = Random.rand(1..5)
    @health = 15 + 0.15*@level #if this runs out the slime is dead
    @attack_power = 0.1*@level #slime has lower attack power modifier due to the fact that slimes are weak
    @defense = 5 + 0.05*@level
    @skills = [tackle, slime]  #there are a max of 4 skills, but you can have less than four skills
                               #as shown by this slime here
  end

end 
        
class Bandit < Monster
  attr_accessor :health, :attack_power, :defense, :skills, :level, :name

  def initialize
    @name = "Bandit"
    @level = Random.rand(6..15)
    @health = 50 + 0.25*level
    @attack_power = 0.2*@level
    @defense = 10 + 0.075*@level
    @skills = [stab, stealth, pistol, aim]
  end
end

class Eagle
  attr_accessor :health, :attack_power, :defense, :skills, :level, :name

  def initialize
    @name = "Eagle"
    @level = Random.rand(16..30)
    @health = 75 + 0.30*level
    @attack_power = 0.35*@level
    @defense = 15 + 0.1*@level
    @skills = [dive, peck, slash, fly]
  end
end

class Skeleton_Knight
  def initialize
    @name = "Skeleton Knight"
    @level = Random.rand(31..40)
    @health = 150 + 0.35*@level
    @attack_power = 0.40*@level
    @defense = 30 + 0.15*@level
    @skills = [shield, stun, slash, dark_bolt] #going to have to write methods for all of
                                               #the attacks for all of the monsters
  end
end
