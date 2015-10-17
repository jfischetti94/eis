require_relative '../coord'

class Vertical < Orientation

  def coords_from_for(coord,size)
    coords = []
    i = 0

    while i < size do
      coords << (coord + Coord.new(0,i))
      i += 1
    end
    return coords
  end

end