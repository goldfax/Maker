require './mapmaker.rb'

_map = MapMaker.new(100, 100, 20)
_map.map[0][0] = Room.new('nw',{monster: 1, player: 1, item: 1, maptype: 1})
_map.map[0][0].n = EmptyRoom.new() 
puts _map.map[0][0].nw
puts _map.map[0][0].n
puts _map.map[0][0].w
puts _map.map[0][0].value[]