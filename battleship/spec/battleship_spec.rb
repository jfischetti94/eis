require 'rspec'
require_relative '../model/battleship'

describe 'Battleship' do

  let(:battleship) {Battleship.new(10,10)}

  it 'a new battleship' do
    expect( battleship.board_high ).to eq 10
    expect( battleship.board_width ).to eq 10
  end

end