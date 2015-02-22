class DocumentosController < ApplicationController
  before_action :authenticate_usuario!
  before_action :set_documento, only: [:show, :edit, :update, :destroy]

  # GET /documentos
  def index
    @documentos = Documento.all
  end

  # GET /documentos/1
  def show
    puts "CAIU AUQEEEEE SHOWWWW"
  end

  # GET /documentos/new
  def new
    @documento = Documento.new
  end

  # GET /documentos/1/edit
  def edit
  end

  # POST /documentos
  def create
    @documento = Documento.new(documento_params)

    if @documento.save
      redirect_to @documento, notice: 'Documento was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /documentos/1
  def update
    if @documento.update(documento_params)
      redirect_to @documento, notice: 'Documento was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /documentos/1
  def destroy
    @documento.destroy
    redirect_to documentos_url, notice: 'Documento was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_documento
      @documento = Documento.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def documento_params
      params.require(:documento).permit([:nome])
    end
end
