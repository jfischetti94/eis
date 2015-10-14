require 'rspec'

describe 'Horizontal' do

  it 'a horizontal position is equals to another horizontal position' do
  	horizontal = Horizontal.new
  	expect( horizontal ).to eq Horizontal.new()
  end

end