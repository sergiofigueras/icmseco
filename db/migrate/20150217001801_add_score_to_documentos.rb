class AddScoreToDocumentos < ActiveRecord::Migration
  def change
    add_column :documentos, :score, :integer
  end
end
