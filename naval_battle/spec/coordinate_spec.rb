require 'rspec'
require_relative '../model/coordinate'

describe 'Coordinate' do

  it 'a coordinate (1,1)' do
    coord = Coordinate.new(1,1)
    expect( coord.x ).to eq 1
    expect( coord.y ).to eq 1
  end

end