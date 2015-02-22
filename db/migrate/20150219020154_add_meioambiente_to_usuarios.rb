class AddMeioambienteToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :meioambiente, :boolean
  end
end
