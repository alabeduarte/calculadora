class CalculadoraMachineController < ApplicationController
  def index
  end

  def new
  end

  def create
  	calculadora_machine = CalculadoraMachine.new
  	valor1 = params[:calculadora_machine][:a]
  	valor2 = params[:calculadora_machine][:b]
  	@result = calculadora_machine.sum(valor1.to_i,valor2.to_i)
  	redirect_to "/calculadora_machine/index"
  end	
end
