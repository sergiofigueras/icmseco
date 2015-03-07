class AddAcaoToDocumentos < ActiveRecord::Migration
  def change
    add_reference :documentos, :acao, index: true
    add_foreign_key :documentos, :acoes
  end
end
