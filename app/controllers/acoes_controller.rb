class AcoesController < ApplicationController
  before_filter :authenticate_usuario!
  before_action :set_acao, only: [:show, :edit, :update, :destroy]

  def visualizar
    @notificacoes = []
    @acoes = Acao.includes(documentos: :arquivos).where(tipo: params[:tipo]).order(:prazo)
    @notificacoes = Notificacao.includes(arquivo: :documento).where(ack: nil)
  end

  # GET /acao/1
  def show
  end

  # GET /acao/new
  def new
    @acao = Acao.new
  end

  # GET /acao/1/edit
  def edit
  end

  # POST /acao
  def create
    @acao = Acao.new(acao_params)

    if @acao.save
      redirect_to @acao, notice: 'acao was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /acao/1
  def update
    if @acao.update(acao_params)
      redirect_to @acao, notice: 'acao was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /acao/1
  def destroy
    @acao.destroy
    redirect_to acao_index_url, notice: 'acao was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acao
      @acao = Acao.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def acao_params
      params.require(:acao).permit(:nome, :desc, :prazo)
    end
end
