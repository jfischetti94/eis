require_relative 'board'
require_relative 'coord'
require_relative 'vertical'
require_relative 'ship'

class Battleship

  def initialize(x,y)
    @board = Board.new(x,y)
  end

  def board_width
    return @board.width
  end

  def board_high
    return @board.high
  end

  def put_ship(ship_name, x, y,orientation_name)
    origin_coord = Coord.new(x,y)
    ship_orientation = Vertical.new()
    ship = Ship.send(ship_name,origin_coord,ship_orientation)
    @board.put_ship(ship)
  end

  def status_in(x,y)
    return @board.status_in(Coord.new(x,y))
  end

end