class Rock < Move

  def play_with(some_move)
    return some_move.play_with_rock.opposite
  end

  def play_with_rock()
    return Ties.new
  end

end