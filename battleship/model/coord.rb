class Coord

  attr_accessor :x, :y
  
  def initialize(x,y)
    @x = x
    @y = y
  end

  def ==(o)
    o.class == self.class && o.x == x && o.y == y
  end

  def +(some_coord)
    return Coord.new(some_coord.x+x,some_coord.y+y)
  end

end