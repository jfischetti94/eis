require_relative 'board'
require_relative 'ship'
Coordinate = Struct.new(:x, :y)

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
    ship_orientation = orientation
    ship = Ship.send(ship_name.to_sym,ship_origin,orientation)
    @board.put_in(ship,ship_origin)
  end

  def cell_occupied?(x,y)
    return @board.cell_occupied?(Coordinate.new(x,y))
  end

  def ship_at(x,y)
    return @board.ship_at(Coordinate.new(x,y))
  end

end