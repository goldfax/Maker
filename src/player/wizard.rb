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

  def initialize name        #initialize the stats of the wizard
    super name               #initialize using super class constructor
  end

  

end
