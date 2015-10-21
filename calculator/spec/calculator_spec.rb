require 'rspec'
require_relative '../app/models/calculator'

describe 'Calculadora' do
  let(:calculator) { Calculator.new }

  it 'when I do not perform any account the counter is 0' do
    expect(calculator.counter).to eq 0
  end

  it '1 + 2 equals 3' do
  	expect(calculator.sum(1,2)).to eq 3
  end

  it '4 - 2 equals 2' do
    expect(calculator.subtraction(4,2)).to eq 2
  end

  it '6 prom 2 equals 4' do
    expect(calculator.average(6,2)).to eq 4
  end

  it 'when I do 2 operations the counter is 2' do
    calculator.sum(1,2)
    calculator.subtraction(4,2)
    expect(calculator.counter).to eq 2
  end
=begin
  it 'when reset the counter the counter is 0' do
    calculator.sum(1,2)
    calculator.subtraction(4,2)
    expect(calculator.counter).to eq 2
    expect(calculator.counter).to eq 0
  end
=end

end