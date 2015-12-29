require './mapmaker.rb'
require './monster.rb'


map2 = MapMaker.new(7,7)
dragon1 = Dragon.new("Mjolnir")
map2.set_map_value 2, 3, [dragon1, 0, 0] #here make sure the first one is the monster
map2.print_map


