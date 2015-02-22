class AddAvaliacaoToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :avaliacao, :boolean
  end
end
