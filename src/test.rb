require './mapmaker.rb'
require './monster.rb'


map2 = MapMaker.new(7,7)
for i in 0..map2.array_w - 1
  for j in 0..map2.array_h - 1
    map2.set_map_value(i, j, [0, 0, 0])
  end
end
map2.print_map

