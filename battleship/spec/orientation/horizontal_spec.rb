require 'rspec'
require_relative '../../model/orientation/horizontal'

describe 'Horizontal' do

  before(:each) do
  end

  let( :horizontal ) {Horizontal.new()}
  let( :coord_1_1 ) {Coord.new(1,1)}
  let( :coord_1_2 ) {Coord.new(1,2)}
  let( :coord_1_3 ) {Coord.new(1,3)}

  it 'obtains coords for 1 size' do
    expect( horizontal.coords_from_for(coord_1_1,1) ).to eq [coord_1_1]
  end
=begin
  it 'obtains coords for 2 size' do
    expect( horizontal.coords_from_for(coord_1_1,2) ).to eq [coord_1_1,@coord_1_2]
  end

  it 'obtains coords for 3 size' do
    expect( horizontal.coords_from_for(coord_1_1,3) ).to eq [coord_1_1, coord_1_2, coord_1_3]
  end
=end
end