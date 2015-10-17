require 'rspec'
require_relative '../model/board'

describe 'Board' do

  let(:board) {Board.new(10,10)}

  it 'a new board' do
    expect( board.high ).to eq 10
    expect( board.width ).to eq 10
  end

end