class Board

  public

  attr_accessor :width, :high
  def initialize(width,high)
    @cells = Array.new(width, Array.new(high))
    @width = width
    @high = high
  end

  def status_in(coord)
    ret = "empty"
    found = @cells[coord.x-1][coord.y-1]
    if not found.nil?
      ret = "taken"
    end
    return ret
  end

  def put_ship(ship)
    ship.coords.cycle(1) {|coord| put_in(ship,coord)}
  end

  private

  def put_in(ship,coord)
    @cells[coord.x-1][coord.y-1] = ship
  end

end