class Scissors

  def play_with(some_move)
    return some_move.play_with_scissors.opposite
  end

  def play_with_rock()
    return Lose.new
  end

  def play_with_monkey()
    return Win.new
  end
  
  def play_with_paper()
    return Win.new
  end
  
  def play_with_scissors()
    return Ties.new
  end
  
end