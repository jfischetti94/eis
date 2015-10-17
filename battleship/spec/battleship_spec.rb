require 'rspec'
require_relative '../model/battleship'

describe 'Battleship' do

  let(:battleship) {Battleship.new(10,10)}

  it 'a new battleship' do
    expect( battleship.board_high ).to eq 10
    expect( battleship.board_width ).to eq 10
  end
  
  it 'put a vertical submarine successfully' do
    expect( battleship.status_in(1,1) ).to eq "empty"
    battleship.put_ship("submarine",1,1,"vertical")
    expect( battleship.status_in(1,1) ).to eq "taken"
  end

  it 'put a horizontal submarine successfully' do
    expect( battleship.status_in(1,1) ).to eq "empty"
    battleship.put_ship("submarine",1,1,"horizontal")
    expect( battleship.status_in(1,1) ).to eq "taken"
  end

  it 'put a vertical cruiser successfully' do
    expect( battleship.status_in(1,1) ).to eq "empty"
    expect( battleship.status_in(1,2) ).to eq "empty"
    battleship.put_ship("cruiser",1,1,"vertical")
    expect( battleship.status_in(1,1) ).to eq "taken"
    expect( battleship.status_in(1,2) ).to eq "taken"
  end

end