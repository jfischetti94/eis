require 'rspec' 

require_relative '../model/rock'
require_relative '../model/paper'
require_relative '../model/scissors'
require_relative '../model/monkey'

require_relative '../model/win'
require_relative '../model/lose'
require_relative '../model/ties'

describe 'Rock' do

  let(:rock) { Rock.new }
  let(:paper) { Paper.new }
  let(:scissors) { Scissors.new }
  let(:monkey) { Monkey.new }
  let(:win) { Win.new }
  let(:lose) { Lose.new }
  let(:ties) { Ties.new }

  it 'rock loses paper' do
    expect(rock.play_with(paper)).to eq lose
  end

  it 'rock wins scissors' do
    expect(rock.play_with(scissors)).to eq win
  end

  it 'rock ties monkey' do
    expect(rock.play_with(monkey)).to eq ties
  end

end