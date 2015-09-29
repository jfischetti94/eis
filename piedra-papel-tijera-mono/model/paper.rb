class Paper

  def play_with(some_move)
    return Ties.new
  end

  def play_with_rock()
    return Win.new
  end

  def play_with_monkey()
    return Lose.new
  end

end