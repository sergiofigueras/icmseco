class AddGraficosToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :graficos, :boolean
  end
end
