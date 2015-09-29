class Scissors

  def play_with_rock()
    return Lose.new
  end

  def play_with_monkey()
    return Win.new
  end
  
  def play_with_paper()
    return Win.new
  end
  
end