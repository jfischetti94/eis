require_relative 'board'
require_relative 'coord'
require_relative 'ship'
require_relative 'orientation/orientation'
require_relative 'orientation/vertical'
require_relative 'orientation/horizontal'

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
    ship_orientation = Orientation.send(orientation_name)
    ship = Ship.send(ship_name,origin_coord,ship_orientation)
    @board.put_ship(ship)
  end

  def status_in(x,y)
    return @board.status_in(Coord.new(x,y))
  end

  def shoot(x,y)
    coord = Coord.new(x,y)
    if @board.ship_at?(coord)
      ship = @board.ship_at(coord)
      ship.shoot_in(coord)
    end
  end

  def ship_status_in(x,y)
    coord = Coord.new(x,y)
    ship = @board.ship_at(coord)
    return ship.status
  end

end