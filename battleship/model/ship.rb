class Ship

  def self.submarine(origin_coord,orientation)
    self.new("submarine", 1, origin_coord, orientation)
  end

  attr_accessor :name, :long, :origin, :orientation
  def initialize(name, long, origin_coord, orientation)
    @name = name
    @long = long
    @origin =  origin_coord
    @orientation = orientation
  end

  def coords
    return [origin]
  end

end