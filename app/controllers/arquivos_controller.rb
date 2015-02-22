class ArquivosController < ApplicationController
  before_action :authenticate_usuario!
  before_action :set_arquivo, only: [:show, :edit, :update, :destroy]

  # GET /arquivos
  def index
    @arquivos = Arquivo.all
  end

  def avaliacao
    @arquivos = Arquivo.where(:score => nil).where.any_of(:cancelado => false, :cancelado => nil).order(:created_at)
  end

  def todos
    @arquivos_meioambiente = []
    documentos = Documento.where.not(:meioambiente_id => nil)
    documentos.each do |documento|
      @arquivos_meioambiente += documento.arquivos
    end
  end

  # GET /arquivos/new
  def new
    @arquivo = Arquivo.new
  end

  # GET /arquivos/1/edit
  def edit
  end

  # POST /arquivos
  def create
    @arquivo = Arquivo.new(arquivo_params)
    @documento = Documento.find(params[:documento_id]);
    @arquivo.documento = @documento
    if @arquivo.save
      redirect_to :back, notice: "Arquivo enviado com sucesso!"
    else
    end
  end

  # PATCH/PUT /arquivos/1
  def update
    if @arquivo.update(arquivo_params)
      redirect_to :back, notice: "Arquivo enviado com sucesso!"
    else
      render :edit
    end
  end

  # DELETE /arquivos/1
  def destroy
    @arquivo.destroy
    @documento = Documento.find(params[:documento_id]);
    redirect_to :back, notice: 'Documento excluido com sucesso!'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arquivo
      @arquivo = Arquivo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def arquivo_params
      params.require(:arquivo).permit(:score, :cancelado, :observacao, :upload)
    end
end
