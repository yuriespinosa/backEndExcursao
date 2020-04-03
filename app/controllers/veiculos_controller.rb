class VeiculosController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    veiculos = Veiculo.all.order(:id)
    render status: :ok, json: veiculos
  end

  def show
    veiculo = Veiculo.find(params[:id])

    render status: :ok, json: veiculo
  end

  def create
    veiculo = Veiculo.new(veiculos_params)

    if veiculo.save
      render status: :no_content, json: {}
    else
      render status: :bad_request, json: veiculo.errors.messages
    end
  end

  def update
    veiculo = Veiculo.find params[:id]

    if veiculo.update veiculos_params
      render status: :no_content, json: {}
    else
      render status: :bad_request, json: veiculo.errors.messages
    end
  end

  private

  def veiculos_params
    #somente o que ira ser utilizado
    params.permit(:nome, :limite_passageiro, :valor)
  end
end
