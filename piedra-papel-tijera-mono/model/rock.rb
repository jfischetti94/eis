class Rock < Move

  def play_with(some_move)
    return some_move.play_with_rock.opposite
  end

  def play_with_rock()
    return Ties.new
  end

  def play_with_monkey()
    return Ties.new
  end

  def play_with_paper()
    return Lose.new
  end

  def play_with_scissors()
    return Win.new
  end

end