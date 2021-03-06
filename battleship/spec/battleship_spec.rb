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

  it 'can not put ship in taken cell' do
    battleship.put_ship("submarine",2,1,"horizontal")
    expect( battleship.status_in(1,1) ).to eq "empty"
    expect( battleship.status_in(2,1) ).to eq "taken"
    expect( battleship.status_in(3,1) ).to eq "empty"
    expect { battleship.put_ship("cruiser",1,1,"horizontal") }.to raise_error("some coord is taken")    
    expect( battleship.status_in(1,1) ).to eq "empty"
    expect( battleship.status_in(2,1) ).to eq "taken"
    expect( battleship.status_in(3,1) ).to eq "empty"
  end

  it 'can not put ship in off board cell' do
    expect { battleship.put_ship("cruiser",11,11,"horizontal") }.to raise_error("some position is off board")
  end

  it 'shoot an empty coord' do
    battleship.shoot(1,1)
    expect( battleship.status_in(1,1) ).to eq "empty"
  end

  it 'shoot a ship and dont sunken' do
    battleship.put_ship("cruiser",1,1,"vertical")
    battleship.shoot(1,1)
    expect( battleship.ship_status_in(1,1) ).to eq "afloat"
  end

  it 'shoot a ship and sunken' do
    battleship.put_ship("submarine",1,1,"vertical")
    battleship.shoot(1,1)
    expect( battleship.ship_status_in(1,1) ).to eq "sunken"
  end 

end