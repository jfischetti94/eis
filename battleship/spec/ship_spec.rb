require 'rspec'
require_relative '../model/ship'
require_relative '../model/coord'

describe 'Ship' do

  before(:each) do
    @coord = instance_double("Coord", :x => 1, :y => 1)
    @vertical = "vertical"
  end

  it 'new submarine ship' do
  	ship = Ship.submarine(@coord,@vertical)
    expect( ship.name ).to eq "submarine"
    expect( ship.long ).to eq 1
    expect( ship.origin ).to eq @coord
    expect( ship.orientation ).to eq @vertical
    expect( ship.coords ).to eq [@coord]
  end

end