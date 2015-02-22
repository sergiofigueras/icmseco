class AddMeioambienteToDocumentos < ActiveRecord::Migration
  def change
    add_reference :documentos, :meioambiente, index: true
    add_foreign_key :documentos, :meioambiente
  end
end
