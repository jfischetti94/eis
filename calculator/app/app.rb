require_relative 'models/calculator'

module Ejemplo
  class App < Padrino::Application
    register Padrino::Rendering
    register Padrino::Helpers

    enable :sessions
    CALCULATOR = Calculator.new

    get 'calculator' do
      render 'calculator_view'
    end

    post 'calcular' do
      @result = CALCULATOR.send(params[:operations],params[:first_argument],params[:second_argument])
      render 'calculator_view'
    end
    
=begin   
    get 'saludo' do
      render 'saludo'
    end

    post 'saludo' do
      session[:nombre] = params[:nombre]
      @nombre = session[:nombre]
      render 'saludo'
    end
=end
  end
end