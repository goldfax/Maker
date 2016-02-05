class Player
  
  attr_accessor :name, :job, :level, :experience, :money, :health
  
  def initialize name, job,
    @name = name
    @job = job
    @level = 1
    @experience = 0
    @money = 0
  end

=begin
  def interact objects, condition, input                  Here definitely going to have to create some objects that are   
    if condition                                          interactable in order to test this out               
      object = objects.getobject(input)
      object.interact condition    
    end
  end
=end

  def health_damage damage, check
    if check
      @health -= damage
    end
  end

  def attack target, args       #target here is an object that the player will attack, args is the skills or extra things the player uses (things that determine damage)
    target.lost_health damage
  end                           #this makes the target call the attacked function on itself, and depending on defence and other things
                                #the target will lose a certain amount of health

=begin
  def job_evolution                   Job evolution is something that should not be worried about at this early stage
  end
=end

  def level_up experience
    if experience > somenumber
      self.level += 1
    end
  end

end                                                  