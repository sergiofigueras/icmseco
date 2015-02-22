class AddVigilanciasanitariaToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :vigilanciasanitaria, :boolean
  end
end
