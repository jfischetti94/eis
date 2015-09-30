class Player

  attr_accessor :name
  attr_accessor :movements

  def initialize(user_name)
    @name = user_name
    @movements = []
  end

  def want_play(movements)
    @movements = movements
  end

  def ==(o)
    o.class == self.class and o.name = self.name
  end

end