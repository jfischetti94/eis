require 'rspec'
require_relative '../model/ship'
require_relative '../model/coordinate'
require_relative '../model/horizontal'

describe 'Ship' do

  let(:horizontal) { Horizontal.new() }

  it 'a submarine long is 1 and take the correct cells' do
    ship = Ship.submarine(Coordinate.new(1,1),horizontal)
    expect( ship.long() ).to eq 1
    expect( ship.origin() ).to eq Coordinate.new(1,1)
    expect( ship.orientation() ).to eq horizontal
    expect( ship.coordinates() ).to eq [Coordinate.new(1,1)]
  end

  it 'a cruiser ship long is 2 and take the correct cells' do
    ship = Ship.cruiser(Coordinate.new(1,1),horizontal)
    expect( ship.long() ).to eq 2
    expect( ship.origin() ).to eq Coordinate.new(1,1)
    expect( ship.orientation() ).to eq horizontal
    expect( ship.coordinates() ).to eq [Coordinate.new(1,1),Coordinate.new(2,1)]
  end

  it 'a destroyer ship long is 3 and take the correct cells' do
    ship = Ship.destroyer(Coordinate.new(1,1),horizontal)
    expect( ship.long() ).to eq 3
    expect( ship.origin() ).to eq Coordinate.new(1,1)
    expect( ship.orientation() ).to eq horizontal
    expect( ship.coordinates() ).to eq [Coordinate.new(1,1),Coordinate.new(2,1),Coordinate.new(3,1)]
  end

end