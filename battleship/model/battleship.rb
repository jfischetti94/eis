require_relative 'board'

class Battleship

  def initialize(x,y)
    @board = Board.new(x,y)
  end

  def board_high
    return @board.high
  end

  def board_width
    return @board.width
  end

  def put_ship(ship_name, x, y,orientation_name)
  end

end