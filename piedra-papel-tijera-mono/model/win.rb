class Win

  def ==(o)
    o.class == self.class
  end

  def opposite()
    return Lose.new
  end

end