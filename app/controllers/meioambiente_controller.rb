class MeioambienteController < ApplicationController
  before_filter :authenticate_usuario!
  before_action :set_meioambiente, only: [:show, :edit, :update, :destroy]

  # GET /meioambiente
  def index
    @porcentagem_concluida = 40;
    @meioambiente = Meioambiente.order(:prazo)
  end

  # GET /meioambiente/1
  def show
  end

  # GET /meioambiente/new
  def new
    @meioambiente = Meioambiente.new
  end

  # GET /meioambiente/1/edit
  def edit
  end

  # POST /meioambiente
  def create
    @meioambiente = Meioambiente.new(meioambiente_params)

    if @meioambiente.save
      redirect_to @meioambiente, notice: 'Meioambiente was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /meioambiente/1
  def update
    if @meioambiente.update(meioambiente_params)
      redirect_to @meioambiente, notice: 'Meioambiente was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /meioambiente/1
  def destroy
    @meioambiente.destroy
    redirect_to meioambiente_index_url, notice: 'Meioambiente was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meioambiente
      @meioambiente = Meioambiente.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def meioambiente_params
      params.require(:meioambiente).permit(:nome, :desc, :prazo)
    end
end
