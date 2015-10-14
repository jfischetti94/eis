require_relative 'board'
require_relative 'ship'
require_relative 'coordinate'
require_relative 'horizontal'

class Naval_Battle

  def initialize()
    @board = Board.new(8)
  end

  def board_width()
    return @board.width()
  end

  def board_high()
    return @board.high()
  end

  def put(ship_name,orientation,vertical_axis,horizontal_axis)
    ship_origin = Coordinate.new(vertical_axis,horizontal_axis)
    ship_orientation = Horizontal.new()
    ship = Ship.send(ship_name.to_sym,ship_origin,ship_orientation)
    @board.put(ship)
  end

  def cell_occupied?(x,y)
    return @board.cell_occupied?(Coordinate.new(x,y))
  end

  def ship_at(x,y)
    return @board.ship_at(Coordinate.new(x,y))
  end

end