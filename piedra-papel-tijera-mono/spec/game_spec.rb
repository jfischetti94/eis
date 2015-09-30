require 'rspec' 

require_relative '../model/player'

require_relative '../model/move'
require_relative '../model/rock'
require_relative '../model/paper'
require_relative '../model/scissors'
require_relative '../model/monkey'

require_relative '../model/win'
require_relative '../model/lose'
require_relative '../model/ties'

describe 'Game' do
=begin
  let(:player_one) { Player.new('Firs Player')}
  let(:player_two) { Player.new('Second Player')}

  let(:rock) { Rock.new }
  let(:paper) { Paper.new }
  let(:scissors) { Scissors.new }
  let(:monkey) { Monkey.new }

  let(:win) { Win.new }
  let(:lose) { Lose.new }
  let(:ties) { Ties.new }

  it 'player one wins round' do
    player_one.want_play([rock,rock,rock])
    player_two.want_play([scissors,scissors,scissors])
    game = Game.new(player_one,player_two)
    game.play
    expect(game.win[1]).to eq player_one
    expect(game.lose[1]).to eq player_two
    expect(game.ties).to eq []
  end
=end
end