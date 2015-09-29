class Paper

  def play_with(some_move)
    return some_move.play_with_paper.opposite
  end

  def play_with_rock()
    return Win.new
  end

  def play_with_monkey()
    return Lose.new
  end

  def play_with_paper()
    return Ties.new
  end
  
end