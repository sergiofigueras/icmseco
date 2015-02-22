class AddAgriculturaToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :agricultura, :boolean
  end
end
