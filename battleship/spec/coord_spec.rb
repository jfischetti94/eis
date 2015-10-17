require 'rspec'
require_relative '../model/coord'

describe 'Coord' do

  let(:coord) {Coord.new(2,5)}

  it 'a new coord' do
    expect( coord.x ).to eq 2
    expect( coord.y ).to eq 5
  end

  it 'a coord (1,8) its equals to coord (1,8)' do
    coord1 = Coord.new(1,8)
    coord2 = Coord.new(1,8)
    expect( coord1 ).to eq coord2
  end

end