require 'rspec'
require_relative '../model/ship'

describe 'Ship' do

  it 'a cruiser ship long is 2' do
    ship = Ship.new()
    expect( ship.long() ).to eq 2
  end

end