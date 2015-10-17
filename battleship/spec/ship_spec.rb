require 'rspec'
require_relative '../model/ship'
require_relative '../model/coord'

describe 'Ship' do

  before(:each) do
    @coord_1_1 = instance_double("Coord", :x => 1, :y => 1)
    @coord_1_2 = instance_double("Coord", :x => 1, :y => 2)
    @vertical = double("Vertical")
  end

  it 'new submarine ship' do
    allow(@vertical).to receive(:coords_from_for) { [@coord_1_1] }
    ship = Ship.submarine(@coord_1_1,@vertical)
    expect( ship.name ).to eq "submarine"
    expect( ship.long ).to eq 1
    expect( ship.origin ).to eq @coord_1_1
    expect( ship.orientation ).to eq @vertical
    expect( ship.coords ).to eq [@coord_1_1]
  end

  it 'new cruiser ship' do
    allow(@vertical).to receive(:coords_from_for) { [@coord_1_1, @coord_1_2] }
    ship = Ship.cruiser(@coord_1_1,@vertical)
    expect( ship.name ).to eq "cruiser"
    expect( ship.long ).to eq 2
    expect( ship.origin ).to eq @coord_1_1
    expect( ship.orientation ).to eq @vertical
    expect( ship.coords ).to eq [@coord_1_1, @coord_1_2]
  end

  it 'shoot it and dont sunken' do
    allow(@vertical).to receive(:coords_from_for) { [@coord_1_1, @coord_1_2] }
    ship = Ship.cruiser(@coord_1_1,@vertical)
    ship.shoot_in(@coord_1_1)
    expect( ship.status ).to eq "afloat"
  end

  it 'shoot it and sunken' do
    allow(@vertical).to receive(:coords_from_for) { [@coord_1_1] }
    ship = Ship.submarine(@coord_1_1,@vertical)
    ship.shoot_in(@coord_1_1)
    expect( ship.status ).to eq "sunken"
  end

end