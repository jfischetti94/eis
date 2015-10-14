require 'rspec'
require_relative '../model/ship'

describe 'Ship' do

  it 'a cruiser ship long is 2' do
    ship = Ship.new(2,'coordinate','orientation')
    expect( ship.long() ).to eq 2
    expect( ship.origin() ).to eq 'coordinate'
    expect( ship.orientation() ).to eq 'orientation'
  end

end