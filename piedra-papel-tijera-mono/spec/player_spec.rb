require 'rspec' 

require_relative '../model/player'

require_relative '../model/move'
require_relative '../model/rock'
require_relative '../model/paper'
require_relative '../model/scissors'
require_relative '../model/monkey'

describe 'Player' do

  let(:rock) { Rock.new }
  let(:paper) { Paper.new }
  let(:scissors) { Scissors.new }
  let(:monkey) { Monkey.new }

  let(:win) { Win.new }
  let(:lose) { Lose.new }
  let(:ties) { Ties.new }

  it 'instance new player named Foo' do
    player = Player.new('Foo')
    expect(player.name).to eq 'Foo'
  end

  it 'some player can define your movements' do
    player = Player.new('Foo')
    movements = [rock,paper,scissors,monkey]
    player.want_play(movements)
    expect(player.movements).to eq movements
  end

  it 'two player with same name and movements are equals' do
    some_player = Player.new('Foo')
    another_player = Player.new('Foo')
    expect(some_player).to eq another_player
  end
  
end