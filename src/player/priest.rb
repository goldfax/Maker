=begin
Author: Nathaniel Freed
Date: 2/4/2016
Description: This file is a class file that defines the priest job that the player might choose.
             This class defines the abilities and stats that a priest would have.  
=end
require './player.rb'

class Priest < player

  def initialize name
    super name
    @stats = {str: 11, int: 11, agi: 5, const: 7, wisd: 15, dext: 5} #just test stats here in all of the "Player jobs"
end