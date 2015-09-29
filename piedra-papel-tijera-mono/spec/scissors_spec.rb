require 'rspec' 

require_relative '../model/move'
require_relative '../model/rock'
require_relative '../model/paper'
require_relative '../model/scissors'
require_relative '../model/monkey'

require_relative '../model/win'
require_relative '../model/lose'
require_relative '../model/ties'

describe 'Scissors' do

  let(:rock) { Rock.new }
  let(:paper) { Paper.new }
  let(:scissors) { Scissors.new }
  let(:monkey) { Monkey.new }
  let(:win) { Win.new }
  let(:lose) { Lose.new }
  let(:ties) { Ties.new }

  it 'scissors wins paper' do
    expect(scissors.play_with(paper)).to eq win
  end

end