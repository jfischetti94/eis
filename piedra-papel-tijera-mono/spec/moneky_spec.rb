require 'rspec' 

require_relative '../model/move'
require_relative '../model/rock'
require_relative '../model/paper'
require_relative '../model/scissors'
require_relative '../model/monkey'

require_relative '../model/win'
require_relative '../model/lose'
require_relative '../model/ties'

describe 'Monkey' do

  let(:rock) { Rock.new }
  let(:paper) { Paper.new }
  let(:scissors) { Scissors.new }
  let(:monkey) { Monkey.new }
  let(:win) { Win.new }
  let(:lose) { Lose.new }
  let(:ties) { Ties.new }

  it 'monkey wins paper' do
    expect(monkey.play_with(paper)).to eq win
  end

  it 'monkey loses scissors' do
    expect(monkey.play_with(scissors)).to eq lose
  end

  it 'monkey ties monkey' do
    expect(monkey.play_with(monkey)).to eq ties
  end

  it 'monkey ties rock' do
    expect(monkey.play_with(rock)).to eq ties
  end

end