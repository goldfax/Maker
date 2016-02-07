=begin
Author: Nathaniel Freed
Date: 2/4/2016
Description: This file is a class file that defines the wizard job that a player might choose. 
             Here will be skills, and evolutions of the wizard will be defined in different classes (files).
             If the user chooses wizard as his job on character creation, the player will attain the 
             wizards stats and abilities defined here. This file will also define future evolutions of the wizard class
             depending on the level of the wizard
=end
require './player.rb'

class Wizard < Player  #inherit functions from Player class

  attr_accessor 
  def initialize name        #initialize the stats of the wizard
    super name               #initialize using super class constructor
  end

=begin
Here is where the wizards base skills are defined....
The wizard will in the future be able to create their own skills, spells.
But to start out the wizard will only be able to use basic magic. To practice
and to become more powerful. The wizard on creation will also be able to choose
a specialization. Choosing a specialtization means that one trains faster in that
specialization, but you can still master it. Training will take time and money and experience
just like in discworld
=end

  def creation        #wizard will be able to create objects, his proficiency is based on the 
  end                 #skill level he has in this type of magic

  def enchantment     #wizard will be able to enchant any object, except for those that are
  end                 #unenchantable

  


end
