require_relative 'board'
require_relative 'ship'

class Coordinate

  def initialize(x,y)
    @x = x
    @y = y
  end

  def ==(o)
    o.class == self.class && o.x == x && o.y == y
  end

  def x()
    return @x
  end
  
  def y()
    return @y
  end 

end