require 'rspec'
require_relative '../model/board'

describe 'Board' do

  let(:board) {Board.new(10,10)}

  before(:each) do
    @coord1_1 = instance_double("Coord", :x => 1, :y => 1)
    @coord2_1 = instance_double("Coord", :x => 2, :y => 1)
    @coord3_1 = instance_double("Coord", :x => 3, :y => 1)
    @coord1_2 = instance_double("Coord", :x => 1, :y => 2)
    @coord1_3 = instance_double("Coord", :x => 1, :y => 3)
    @coord = instance_double("Coord", :x => 1, :y => 1)
    @vertical = "vertical"
  end

  it 'a new board' do
    expect( board.high ).to eq 10
    expect( board.width ).to eq 10
  end

  it 'returned empty state when asked about the state of an empty cell' do
    expect( board.status_in(@coord1_1) ).to eq "empty"    
  end

  it 'put ship with long 1 horizontally' do
    ship =  instance_double("Ship", :long => 1, :coords => [@coord1_1])

    expect( board.status_in(@coord1_1) ).to eq "empty"
    board.put_ship(ship)
    expect( board.status_in(@coord1_1) ).to eq "taken"
  end

  it 'put ship with long 2 horizontally' do
    ship =  instance_double("Ship", :long => 1, :coords => [@coord1_1,@coord2_1])

    expect( board.status_in(@coord1_1) ).to eq "empty"
    expect( board.status_in(@coord2_1) ).to eq "empty"
    board.put_ship(ship)
    expect( board.status_in(@coord1_1) ).to eq "taken"
    expect( board.status_in(@coord2_1) ).to eq "taken"
  end

  it 'put ship with long 3 horizontally' do
    ship =  instance_double("Ship", :long => 1, :coords => [@coord1_1,@coord2_1,@coord3_1])

    expect( board.status_in(@coord1_1) ).to eq "empty"
    expect( board.status_in(@coord2_1) ).to eq "empty"
    expect( board.status_in(@coord3_1) ).to eq "empty"
    board.put_ship(ship)
    expect( board.status_in(@coord1_1) ).to eq "taken"
    expect( board.status_in(@coord2_1) ).to eq "taken"
    expect( board.status_in(@coord3_1) ).to eq "taken"
  end

  it 'put ship with long 1 verticaly' do
    ship =  instance_double("Ship", :long => 1, :coords => [@coord1_1])

    expect( board.status_in(@coord1_1) ).to eq "empty"
    board.put_ship(ship)
    expect( board.status_in(@coord1_1) ).to eq "taken"
  end

  it 'put ship with long 2 verticaly' do
    ship =  instance_double("Ship", :long => 1, :coords => [@coord1_1,@coord1_2])

    expect( board.status_in(@coord1_1) ).to eq "empty"
    expect( board.status_in(@coord1_2) ).to eq "empty"
    board.put_ship(ship)
    expect( board.status_in(@coord1_1) ).to eq "taken"
    expect( board.status_in(@coord1_2) ).to eq "taken"
  end

  it 'put ship with long 3 horizontally' do
    ship =  instance_double("Ship", :long => 1, :coords => [@coord1_1,@coord1_2,@coord1_3])

    expect( board.status_in(@coord1_1) ).to eq "empty"
    expect( board.status_in(@coord1_2) ).to eq "empty"
    expect( board.status_in(@coord1_3) ).to eq "empty"
    board.put_ship(ship)
    expect( board.status_in(@coord1_1) ).to eq "taken"
    expect( board.status_in(@coord1_2) ).to eq "taken"
    expect( board.status_in(@coord1_3) ).to eq "taken"
  end

end