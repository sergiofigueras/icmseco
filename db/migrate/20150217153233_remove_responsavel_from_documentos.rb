class RemoveResponsavelFromDocumentos < ActiveRecord::Migration
  def change
    remove_column :documentos, :responsavel, :string
  end
end
