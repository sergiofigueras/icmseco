class NotificacoesController < ApplicationController
  before_action :set_notificacao, only: [:show, :edit, :update, :destroy]

  # GET /notificacoes
  def index
    @notificacoes = Notificacao.all
  end

  # GET /notificacoes/1
  def ack
    set_notificacao.ack = true
    if @notificacao.save
      redirect_to :back and return
    end

  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notificacao
      @notificacao = Notificacao.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def notificacao_params
      params.require(:notificacao).permit(:texto, :ack)
    end
end
