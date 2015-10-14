class Ship

  ######
  public
  ######
  attr_accessor :long, :origin, :orientation
  def Ship.submarine(origin,orientation)
    self.new(1, origin, orientation)
  end

  def Ship.cruiser(origin,orientation)
    self.new(2, origin, orientation)
  end

  def Ship.destroyer(origin,orientation)
    self.new(3, origin, orientation)
  end

  def initialize(long,origin,orientation)
    @long = long
    @origin = origin
    @orientation = orientation
  end

  def coordinates
    return orientation.positions_for(self)
  end

end