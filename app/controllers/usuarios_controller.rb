class UsuariosController < ApplicationController
  before_action :set_usuario, only: [:edit, :update, :destroy]
  before_action :authenticate_usuario!

  # GET /users
  def index
    @usuarios = Usuario.all
  end

  # GET /users/new
  def new
    @usuario = Usuario.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  def create
    @usuario = Usuario.new(usuario_params)
    if @usuario.save
      redirect_to usuarios_url
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /users/1
  def update
    if usuario_params[:password].blank?
      @usuario.update_without_password(usuario_params_without_password)
    else
      @usuario.update(usuario_params)
    end

    if @usuario.valid?
      if @usuario == current_usuario
        sign_in(@usuario, bypass: true)
      end
      if current_usuario.admin?
        redirect_to usuarios_url
      else
        redirect_to :back, notice: 'Propriedades alteradas com sucesso!'
      end
    else
      render action: 'edit'
    end
  end

  # DELETE /users/1
  def destroy
    @usuario.destroy
    redirect_to usuarios_url, notice: 'Usuário excluído.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def usuario_params
      params.require(:usuario).permit(:nome, :sobrenome, :email, :admin, :avaliacao, :agricultura, :assuntosindigenas, :educacao, :graficos, :meioambiente, :saude, :vigilanciasanitaria, :password, :password_confirmation)
    end

  def usuario_params_without_password
      usuario_params.delete(:password)
      usuario_params.delete(:password_confirmation)
      usuario_params
    end
end
