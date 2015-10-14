require 'rspec'
require_relative '../model/naval_battle'


describe 'Naval_Battle' do

  let(:naval_battle) { Naval_Battle.new() }
  let(:cruiser) { "cruiser" }
  let(:vertical) { "vertical" }

  it 'a new naval battle consists of two boards with size 8 x 8 each' do
    expect( naval_battle.board_width ).to eq 8
    expect( naval_battle.board_high ).to eq 8
  end

  it 'put horizontal ship with size 2 successfully' do
    naval_battle.put(cruiser,vertical,1,1)

    expect(naval_battle.cell_occupied?(1,1)).to be true
    ship = naval_battle.ship_at(1,1)
    expect( ship.long ).to eq 2
    expect( ship.origin ).to eq (Coordinate.new(1,1))
  end

end