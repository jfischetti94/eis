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
    @player_one_results = []
    (0..2).each do |i| 
      @player_one_results << player_one.movements[i].play_with(player_two.movements[i])
    end
    @player_one_results.cycle(1) {|result| @player_two_results << result.opposite}
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
    if (@player_one_results.count(Win.new) > @player_two_results.count(Win.new))
      ret = [@player_two]
    end
    if (@player_one_results.count(Win.new) < @player_two_results.count(Win.new))
      ret = [@player_one]
    end
    return ret
  end

  def ties()
    ret = []
    if (@player_one_results.count(Win.new)) == (@player_two_results.count(Win.new))
      ret [@player_one,@player_two]
    end
    return ret    
  end

end