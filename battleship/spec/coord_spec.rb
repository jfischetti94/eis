require 'rspec'
require_relative '../model/coord'

describe 'Coord' do

  let(:coord) {Coord.new(2,5)}

  it 'a new coord' do
    expect( coord.x ).to eq 2
    expect( coord.y ).to eq 5
  end

  it 'coord (1,8) its equals to coord (1,8)' do
    coord1 = Coord.new(1,8)
    coord2 = Coord.new(1,8)
    expect( coord1 ).to eq coord2
  end

  it 'coord (5,2) it is not equal to a coord (4,8)' do
    coord1 = Coord.new(5,2)
    coord2 = Coord.new(4,8)
    expect( coord1 ).not_to eq coord2
  end

  it 'coord (1,2) plus coord (4,8) is coord (5,10)' do
    coord1 = Coord.new(1,2)
    coord2 = Coord.new(4,8)
    result_coord = coord1 + coord2
    expect( result_coord ).to eq Coord.new(5,10)
  end


end