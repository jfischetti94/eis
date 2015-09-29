require 'rspec' 
require_relative '../model/rock'
require_relative '../model/paper'
require_relative '../model/win'

describe 'Rock' do

  let(:rock) { Rock.new }
  let(:paper) { Paper.new }
  let(:scissors) { Scissors.new }
  let(:monkey) { Monkey.new }
  let(:win) { Win.new }

  it 'rock beats paper' do
    expect(rock.play_with(paper)).to eq win
  end

end