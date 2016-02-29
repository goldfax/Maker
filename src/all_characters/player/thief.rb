=begin
Author: Nathaniel Freed
Date: 2/4/2016
Description: This file is a class file that defines the thief job that the player might choose.
             This class defines the abilities and stats that a thief would have.  
=end
require './player.rb'

class Thief < Player

  def initialize name
    super name
    @stats = {str: 10, int: 7, agi: 15, const: 5, wisd: 7, dext: 12}
  end

  #here is where the skills of the thief is defined, IE a thief can steal, 
  #use stealthy actions and upgrades to the class would follow two standard paths
  #assassin or a different kind of thief (upgraded stealing + combat capabilities vs upgraded stealth + combat)

  
end