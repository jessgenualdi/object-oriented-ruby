require './items.rb'
require './life.rb'

item3 = JAG::Life.new(color: "red", length: "long", price: 75, shelf_life: 33)

item3.print_info
puts