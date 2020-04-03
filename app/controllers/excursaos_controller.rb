class ExcursaosController < ApplicationController
  skip_before_action :verify_authenticity_token

  # GET /excursaos
  # GET /excursaos.json
  def index
    excursaos = Excursao.all.map do |excursao| {
      id: excursao.id,
      nome: excursao.nome,
      created_at: excursao.created_at,
      partida: excursao.partida,
      chegada: excursao.chegada,
      veiculo: excursao.veiculo.nome,
      qtdveiculos: excursao.qtdveiculos,
      destino: excursao.destino,
      valorfinal: @valorfinal = excursao.veiculo.valor * excursao.veiculo.limite_passageiro * excursao.qtdveiculos,
      }
    end

    render status: :ok, json: excursaos
  end


  # POST /excursaos
  # POST /excursaos.json
  def create
    excursao = Excursao.new(excursaos_params)

    if excursao.save
      render status: :no_content, json: {}
    else
      render status: :bad_request, json: excursao.errors.messages
    end
  end

  def show
    @excursao = Excursao.find(params[:id])

    render status: :ok, json: @excursao
  end

  # PATCH/PUT /excursaos/1
  # PATCH/PUT /excursaos/1.json
  def update

    excursao = Excursao.find params[:id]
    
    if excursao.save excursaos_params
      render status: :no_content, json: {}
    else
      render status: :bad_request, json: excursao.errors.messages
    end
  end

  # DELETE /excursaos/1
  # DELETE /excursaos/1.json
  def destroy
    excursao = Excursao.find params[:id]

    if excursao.delete
      render status: :no_content, json: {}
    else
      render status: :bad_request, json: excursao.errors.messages
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def excursaos_params
      params.permit(:nome, :partida, :chegada, :veiculo_id, :qtdveiculos, :destino)
    end
end
