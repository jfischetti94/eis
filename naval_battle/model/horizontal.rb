require_relative 'coordinate'

class Horizontal

  def ==(o)
    o.class == self.class
  end

  def positions_for(ship)
    positions = []
    i = 0

    while i < ship.long do
      positions << (ship.origin + Coordinate.new(i,0))
      i += 1
    end
    return positions
  end

end