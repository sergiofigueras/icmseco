class AddNomeToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :nome, :string
    add_column :usuarios, :sobrenome, :string
  end
end
