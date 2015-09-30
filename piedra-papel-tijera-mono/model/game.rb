class Game

  attr_accessor :player_one
  attr_accessor :player_two

  def initialize(player_one,player_two)
    @player_one = player_one
    @player_two = player_two
  end

  def play()
  end

  def win()
    return [@player_one]
  end

  def lose()
    return [@player_two]
  end

  def ties()
    return []
  end
end