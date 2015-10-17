require 'rspec'
require_relative '../../model/orientation/horizontal'

describe 'Horizontal' do

  before(:each) do
  end

  let( :horizontal ) {Horizontal.new()}
  let( :coord_1_1 ) {Coord.new(1,1)}
  let( :coord_2_1 ) {Coord.new(2,1)}
  let( :coord_3_1 ) {Coord.new(2,1)}

  it 'obtains coords for 1 size' do
    expect( horizontal.coords_from_for(coord_1_1,1) ).to eq [coord_1_1]
  end

  it 'obtains coords for 2 size' do
    expect( horizontal.coords_from_for(coord_1_1,2) ).to eq [coord_1_1,coord_2_1]
  end
=begin
  it 'obtains coords for 3 size' do
    expect( horizontal.coords_from_for(coord_1_1,3) ).to eq [coord_1_1, coord_2_1, coord_3_1]
  end
=end
end