require 'rspec'
require_relative '../model/board'

describe 'Board' do

  it 'a new board size 8 x 8' do
    board = Board.new(8)
    expect( board.high() ).to eq 8
    expect( board.width() ).to eq 8
  end

end