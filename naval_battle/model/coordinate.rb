require_relative 'board'
require_relative 'ship'

class Coordinate

  attr_accessor :x, :y
  def initialize(x,y)
    @x = x
    @y = y
  end

  def ==(o)
    o.class == self.class && o.x == x && o.y == y
  end

  def +(some_coordinate)
    Coordinate.new(some_coordinate.x+x,some_coordinate.y+y)
  end

  def to_s()
    "Coordinate:(#{self.x},#{self.y})"
  end

end