class MapMaker

  attr_accessor :array_h, :array_w, :map, :r_width, :r_height

  def initialize random, w, h #if true a random sized map will be built
    if random
	    build_rmap
		else
      get_map_dimensions
	    build_map
	  end
  end

  def get_map_dimensions
    print "Input map height: " #this is the arrays height
    @array_h = gets.chomp
    print "\nInput map width: " #this is the arrays width
    @array_w = gets.chomp
  end

  def build_map
  	@map = Array.new(@array_w) { Array.new(@array_h) }
  end

  def build_rmap input_w, input_h
  	random_n = Random.new()
	@r_height = random_n.rand(0..input_h)
	@r_width = random_n.rand(0..input_w)
	@map = Array.new(@r_width) { Array.new(@r_height) }
  end

=begin

  each index in the 2d array will denote a space in the game
  in each index there will be another array that will contain values that
  describe that space in the game. for example 
  [terrain_type (this includes buildings, #of monsters, and monster type, is there treasure]

=end

  def set_map_value w, h, values #here values is an array which is explained above
  	@map[w][h] = values
  end

end
  
