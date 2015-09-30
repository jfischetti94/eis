class Round

  def initialize(player_one_move,player_two_move)
    @player_one_move = player_one_move
    @player_two_move = player_two_move
  end

  def player_one_result()
    return @player_one_move.play_with(@player_two_move)
  end

  def player_two_result()
    return @player_two_move.play_with(@player_one_move)
  end
end