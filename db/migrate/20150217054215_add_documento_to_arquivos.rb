class AddDocumentoToArquivos < ActiveRecord::Migration
  def change
    add_reference :arquivos, :documento, index: true
    add_foreign_key :arquivos, :documentos
  end
end
