require 'rspec'
require_relative '../model/board'
require_relative '../model/ship'
require_relative '../model/horizontal'
require_relative '../model/coordinate'

describe 'Board' do

  let(:board) {Board.new(8)}

  it 'a new board size 8 x 8' do
    expect( board.high() ).to eq 8
    expect( board.width() ).to eq 8
  end

  it 'put orizontal ship with long 2 successfully' do
    ship = Ship.cruiser(Coordinate.new(1,1),Horizontal.new)
    board.put(ship)
    expect( board.cell_occupied?(Coordinate.new(1,1)) ).to be true
    expect( board.cell_occupied?(Coordinate.new(2,1)) ).to be true
  end

end