require_relative 'models/calculator'

module Ejemplo
  class App < Padrino::Application
    register Padrino::Rendering
    register Padrino::Helpers

    enable :sessions
    CALCULATOR = Calculator.new

    get 'calculator' do
      @result = 0
      @counter = CALCULATOR.counter
      render 'calculator_view'
    end

    post 'calculate' do
      @result = CALCULATOR.send(params[:operations], params[:first_argument].to_i, params[:second_argument].to_i)
      @counter = CALCULATOR.counter
      render 'calculator_view'
    end

    post 'reset_counter' do
      CALCULATOR.reset_counter
      @counter = CALCULATOR.counter
      render 'calculator_view'
    end

  end
end