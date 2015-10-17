require 'rspec'
require_relative '../../model/orientation/orientation'
require_relative '../../model/orientation/vertical'

describe 'Orientation' do

  it 'make horizontal orientation' do
    expect( Orientation.horizontal ).to eq Horizontal.new
  end
=begin
  it 'make vertial orientation' do
    expect( Orientation.vertical ).to eq Vertical.new
  end
=end
end