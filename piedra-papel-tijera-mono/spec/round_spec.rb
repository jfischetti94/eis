require 'rspec' 

require_relative '../model/round'

require_relative '../model/move'
require_relative '../model/rock'
require_relative '../model/paper'
require_relative '../model/scissors'
require_relative '../model/monkey'

require_relative '../model/win'
require_relative '../model/lose'
require_relative '../model/ties'

describe 'Round' do

  let(:rock) { Rock.new }
  let(:paper) { Paper.new }
  let(:scissors) { Scissors.new }
  let(:monkey) { Monkey.new }

  let(:win) { Win.new }
  let(:lose) { Lose.new }
  let(:ties) { Ties.new }

  it 'player one wins round' do
    round = Round.new(rock,scissors)
    expect(round.player_one_result).to eq win
    expect(round.player_two_result).to eq lose
  end


  it 'player two wins round' do
    round = Round.new(monkey,scissors)
    expect(round.player_one_result).to eq lose
    expect(round.player_two_result).to eq win
  end

=begin
  it 'players tie' do

  end
=end
end