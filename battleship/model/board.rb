class Board

  attr_accessor :width, :high
  def initialize(width,high)
    @width = width
    @high = high
  end

  def status_in(coord)
    return "empty"
  end

end