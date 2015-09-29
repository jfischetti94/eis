class Monkey

  def play_with(some_move)
    return some_move.play_with_monkey.opposite
  end

  def play_with_rock()
    return Ties.new
  end

  def play_with_monkey()
    return Ties.new
  end

  def play_with_paper()
  	return Win.new
  end

end