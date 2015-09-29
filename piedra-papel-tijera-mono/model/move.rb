class Move

  def play_with(some_move)
    raise "This method should be over-ridden by a sub-class"
  end

  def play_with_rock()
    raise "This method should be over-ridden by a sub-class"
  end
  
  public  :play_with,
          :play_with_rock

end