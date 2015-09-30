class Game

  attr_accessor :player_one
  attr_accessor :player_two

  def initialize(player_one,player_two)
    @player_one = player_one
    @player_two = player_two
    @player_one_results = []
    @player_two_results = []
  end

  def play()
    (0..2).each do |i| 
      player_one_move = @player_one.movements[i]
      player_two_move = @player_two.movements[i]
      round = Round.new(player_one_move,player_two_move)
      @player_one_results << round.player_one_result
      @player_two_results << round.player_two_result
    end
  end

  def win()
    ret = []
    if (@player_one_results.count(Win.new) > @player_two_results.count(Win.new))
      ret = [@player_one]
    end
    if (@player_one_results.count(Win.new) < @player_two_results.count(Win.new))
      ret = [@player_two]
    end
    return ret
  end

  def lose()
    ret = []
    if (@player_one_results.count(Lose.new) > @player_two_results.count(Lose.new))
      ret = [@player_two]
    end
    if (@player_one_results.count(Lose.new) < @player_two_results.count(Lose.new))
      ret = [@player_one]
    end
    return ret
  end

  def ties()
    ret = []
    if (self.win().empty? and self.lose.empty?)
      ret = [@player_one,@player_two]
    end
    return ret    
  end

end