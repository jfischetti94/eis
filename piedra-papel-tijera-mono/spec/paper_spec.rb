require 'rspec' 

require_relative '../model/move'
require_relative '../model/rock'
require_relative '../model/paper'
require_relative '../model/scissors'
require_relative '../model/monkey'

require_relative '../model/win'
require_relative '../model/lose'
require_relative '../model/ties'

describe 'Paper' do

  let(:rock) { Rock.new }
  let(:paper) { Paper.new }
  let(:scissors) { Scissors.new }
  let(:monkey) { Monkey.new }
  let(:win) { Win.new }
  let(:lose) { Lose.new }
  let(:ties) { Ties.new }

  it 'paper ties paper' do
    expect(paper.play_with(paper)).to eq ties
  end

  it 'paper loses scissors' do
    expect(paper.play_with(scissors)).to eq lose
  end

  it 'paper loses monkey' do
    expect(paper.play_with(monkey)).to eq lose
  end

  it 'paper wins rock' do
    expect(paper.play_with(rock)).to eq win
  end

end