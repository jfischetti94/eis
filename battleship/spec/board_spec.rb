require 'rspec'
require_relative '../model/board'

describe 'Board' do

  let(:board) {Board.new(10,10)}

  before(:each) do
    @origin_coord = instance_double("Coord", :x => 1, :y => 1)
    @vertical = "vertical"
  end

  it 'a new board' do
    expect( board.high ).to eq 10
    expect( board.width ).to eq 10
  end

  it 'returned empty state when asked about the state of an empty cell' do
    expect( board.status_in(@origin_coord) ).to eq "empty"    
  end

=begin
  it 'put ship with long 1 horizontally' do
    orientation = "vertical"
    ship =  instance_double("Ship", :long => 1, :origin => @origin_coord, :orientation => "vertical")

    expect( board.status_in(@origin_coord) ).to eq "empty"
    board.put_ship(ship)
    expect( board.status_in(@origin_coord) ).to eq "taken"
  end
=end

end