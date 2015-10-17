class Ship

  def self.submarine(origin_coord,orientation)
    self.name_and_size("submarine", 1, origin_coord, orientation)
  end

  def self.cruiser(origin_coord,orientation)
    self.name_and_size("cruiser", 2, origin_coord, orientation)
  end

  def self.name_and_size(name, long, origin_coord, orientation)
    self.new(name, long, origin_coord, orientation)
  end

  attr_accessor :name, :long, :origin, :orientation
  def initialize(name, long, origin_coord, orientation)
    @name = name
    @long = long
    @origin =  origin_coord
    @orientation = orientation
  end

  def coords
    return @orientation.coords_from_for(@origin,@long)
  end

end