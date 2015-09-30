class Player

  def initialize(user_name)
    @name = user_name
  end

  def name()
    return @name
  end

  def ==(o)
    o.class == self.class and o.name = self.name
  end

end