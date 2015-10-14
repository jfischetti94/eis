Coordinate = Struct.new(:x, :y)

class Ship

  def initialize()
    @long = 2
  end

  def long()
    return @long
  end

  def origin()
    return Coordinate.new(1,1)
  end

end