class Ties

  def ==(o)
    o.class == self.class
  end

  def opposite()
    return Ties.new
  end
end