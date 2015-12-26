class MapMaker

  attr_accessor :array_h, :array_w, :map, :r_width, :r_height

  def initialize random = false, w, h #if true a random sized map will be built
    if random
	    build_rmap
    else
      @array_w = w
      @array_h = h
      build_map
	  end
  end

  def build_map
  	@map = Array.new(@array_w) { Array.new(@array_h, [0,0,0]) }
  end

  def build_rmap input_w, input_h
    random_n = Random.new()
	  @r_height = random_n.rand(0..input_h)
	  @r_width = random_n.rand(0..input_w)
	  @map = Array.new(@r_width) { Array.new(@r_height, [0,0,0]) }
  end

  def get_element x, y
    return @map[x][y]
  end
  
  #method for testing purposes, not to actually display what the user should see
  #used to visualize the data that is currently on the map
  def print_map         
    for i in 1..@array_w
      print "#{i}     "
      if i == @array_w
        print "\n"
      end
    end
    @map.each do |r|
      puts r.each {|p| p }.join(" ")
    end
  end

=begin

  each index in the 2d array will denote a space in the game
  in each index there will be another array that will contain values that
  describe that space in the game. for example 
  [terrain_type (this includes buildings, #of monsters, and monster type, is there treasure]

=end

  def set_map_value w, h, values #here values is an array which is explained above 
  	                             #or it is a single integer value for testing
    @map[w][h] = values
  end

end
  
