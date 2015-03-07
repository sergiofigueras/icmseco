class AddArquivoToNotificacoes < ActiveRecord::Migration
  def change
    add_reference :notificacoes, :arquivo, index: true
    add_foreign_key :notificacoes, :arquivos
  end
end
