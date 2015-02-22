class AddEducacaoToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :educacao, :boolean
  end
end
