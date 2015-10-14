require 'rspec'
require_relative '../model/coordinate'

describe 'Coordinate' do

  it 'a coordinate (1,1)' do
    coord = Coordinate.new(1,1)
    expect( coord.x ).to eq 1
    expect( coord.y ).to eq 1
  end

  it 'a coordinate (2,2) is x=2 y=2' do
    coord = Coordinate.new(2,2)
    expect( coord.x ).to eq 2
    expect( coord.y ).to eq 2
  end

  it 'a coordinate (3,6) its equals to coordinate (3,6)' do
    coord1 = Coordinate.new(3,6)
    coord2 = Coordinate.new(3,6)
    expect( coord1 ).to eq coord2
  end

  it 'a coordinate (5,2) it is not equal to a coordinate (4,8)' do
    coord1 = Coordinate.new(5,2)
    coord2 = Coordinate.new(4,8)
    expect( coord1 ).not_to eq coord2
  end

  it 'coordinate (1,2) plus coordinate (4,8) is coordinate (5,10)' do
    coord1 = Coordinate.new(1,2)
    coord2 = Coordinate.new(4,8)
    result_coord = coord1 + coord2
    expect( result_coord ).to eq Coordinate.new(5,10)
  end

end