require './mapmaker.rb'
require './monster.rb'


map2 = MapMaker.new(7,7)
dragon1 = Dragon.new("Mjolnir")
slime1 = Slime.new
bandit = Bandit.new
eagle = Eagle.new
map2.set_map_value 2, 3, [dragon1, 0, 0] #here make sure the first one is the monster
map2.set_map_value 3, 4, [slime1, 0, 0]
map2.set_map_value 4, 5, [eagle, 0, 0]
map2.set_map_value 3, 5, [bandit, 0, 0]
map2.print_map


