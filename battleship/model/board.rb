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
    if (@cells[[coord.x,coord.y]])=="empty"
      ret = "empty"
    else
      ret = "taken"
    end
    return ret
  end

  def put_ship(ship)
    check_cells_status_to_put(ship.coords)
    ship.coords.cycle(1) {|coord| put_in(ship,coord)}
  end

  private

  def put_in(ship,coord)
    @cells[[coord.x,coord.y]] = ship
  end

  def check_cells_status_to_put(coords)
    coords.cycle(1) {|coord| 
      if status_in(coord)=="taken"
        raise "some coord is taken"
      end}
  end

end