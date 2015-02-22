class AddResponsavelToDocumentos < ActiveRecord::Migration
  def change
    add_column :documentos, :responsavel, :string
  end
end
