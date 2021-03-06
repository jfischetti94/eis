class Board

  public

  attr_accessor :width, :high
  def initialize(width,high)
    @cells = Hash.new
    @width = width
    @high = high
    for x in 1..width
      for y in 1..high
        @cells[[x,y]] = "empty"
      end
    end
  end

  def status_in(coord)
    if coord.x > @width || coord.y > @high
      return off_board_status
    end

    if (@cells[[coord.x,coord.y]])=="empty"
      return empty_status
    else
      return taken_status
    end
    return unknown_status
  end

  def put_ship(ship)
    check_cells_status_to_put(ship.coords)
    ship.coords.cycle(1) {|coord| put_in(ship,coord)}
  end

  def ship_at?(coord)
    return @cells[[coord.x,coord.y]].class == Ship
  end

  def ship_at(coord)
    return @cells[[coord.x,coord.y]]
  end

  private

  def off_board_status
    return "off board"
  end

  def empty_status
    return "empty"
  end

  def taken_status
    return "taken"
  end

  def unknown_status
    return "unknown status"
  end

  def put_in(ship,coord)
    @cells[[coord.x,coord.y]] = ship
  end

  def check_cells_status_to_put(coords)
    coords.cycle(1) {|coord| 
      if status_in(coord) == taken_status
        raise "some coord is taken"
      end
      if status_in(coord) == off_board_status
        raise "some position is off board"
      end}
  end

end