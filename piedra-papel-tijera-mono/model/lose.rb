class Lose

  def ==(o)
    o.class == self.class
  end

  def opposite()
    return Win.new
  end
end