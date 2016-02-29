=begin
Author: Nathaniel Freed
Date: 2/4/2016
Description: This file is a class file that defines the warrior job that the player might choose on character creation.
             If the player evolves this class then a new character with same stats but different (improved class) will
             be created. Defines the abilities and stats that a warrior has.
=end

require './player.rb'

class Warrior < Player

  def initialize name
    super name
    @stats = {str: 15, int: 5, agi: 10, const: 10, wisd: 5, dext: 7}
  end

=begin
  
Here is the warrior strong physical defense, and medium attack
skills lie in the realm of learning martial arts (anything with a weapon)
Has less intelligence than a wizard as most of the warriors training stems
from physical repetition, and experience gained in fights.
Skills: Martial Arts (Shield, Sword, Spear, Mace, weapons fighting..etc).
        Understanding of physical laws (using nature with martial arts)
        
  
=end

  

end
