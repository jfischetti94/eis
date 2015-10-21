require 'rspec'
require_relative '../app/models/calculator'

describe 'Calculadora' do
  let(:calculator) { Calculator.new }

  it '1 + 2 equals 3' do
  	expect(calculator.sum(1,2)).to eq 3
  end

end