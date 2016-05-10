#file to enable the automation of the creation of maps, using the newmap.rb nodal style of 
#creating relationships between each room that is made, and the nodal style allows for 8 directions
#in which there can be rooms
#need a number to decide whether to make just north, just south, just west, just east
#or to make two rooms or three rooms or four rooms for on

require './map_node.rb'

class MapMaker
  #randomize dimensions for map
  attr_accessor :map
  def initialize x, y, limit #parameter to limit the number of rooms
    rand_num = Random.new()
    @x = x    
    @y = y  
    @map = Array.new(@x){Array.new(@y)} #initalize randomly large
    @limit = limit
    @count = 0
    #loop do  #generate random coordinates
     # new_num_x = rand_num.rand(0..@x)
      #new_num_y = rand_num.rand(0..@y)
      #break if count >= limit
    #end                                                       
  end                            

end
  
