class Monkey

  def play_with(some_move)
    return Win.new
  end

  def play_with_rock()
    return Ties.new
  end

end