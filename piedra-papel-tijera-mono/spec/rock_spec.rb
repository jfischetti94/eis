require 'rspec' 
require_relative '../model/rock'
require_relative '../model/paper'
require_relative '../model/scissors'
require_relative '../model/win'
require_relative '../model/lose'

describe 'Rock' do

  let(:rock) { Rock.new }
  let(:paper) { Paper.new }
  let(:scissors) { Scissors.new }
  let(:monkey) { Monkey.new }
  let(:win) { Win.new }
  let(:lose) { Lose.new }

  it 'rock loses paper' do
    expect(rock.play_with(paper)).to eq lose
  end

  it 'rock wins scissors' do
    expect(rock.play_with(scissors)).to eq win
  end

end