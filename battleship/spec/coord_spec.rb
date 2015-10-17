require 'rspec'
require_relative '../model/coord'

describe 'Battleship' do

  let(:coord) {Coord.new(2,5)}

  it 'a new coord' do
    expect( coord.x ).to eq 2
    expect( coord.y ).to eq 5
  end

end