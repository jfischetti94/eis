class Board

  def initialize(size)
    @size = size
    @vertical_axis = Array.new(size,{})
  end

  def high()
    return size
  end

  def width()
    return size
  end

  def put_in(ship,coordinate)
    orizontal_axis = @vertical_axis.at(coordinate.x-1)
    orizontal_axis.store(coordinate.y-1,ship)
  end

  def cell_occupied?(coordinate)
    orizontal_axis = @vertical_axis.at(coordinate.x-1)
    return orizontal_axis.key?(coordinate.y-1)
  end

  def ship_at(coordinate)
    orizontal_axis = @vertical_axis.at(coordinate.x-1)
    return orizontal_axis.values_at(coordinate.y-1)[0]
  end


  private

  def size()
    return @size
  end

end