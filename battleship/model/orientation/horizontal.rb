require_relative '../coord'

class Horizontal < Orientation

  def coords_from_for(coord,size)
    coords = []
    i = 0

    while i < size do
      coords << (coord + Coord.new(i,0))
      i += 1
    end
    return coords
  end

end