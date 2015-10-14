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
    expect( coord1.x ).to eq coord2.x
    expect( coord1.y ).to eq coord2.y
  end

  it 'a coordinate (5,2) it is not equal to a coordinate (4,8)' do
    coord1 = Coordinate.new(5,2)
    coord2 = Coordinate.new(4,8)
    expect( coord1.x ).not_to eq coord2.x
    expect( coord1.y ).not_to eq coord2.y
  end

end