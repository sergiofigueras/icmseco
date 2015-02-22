class AddAssuntosindigenasToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :assuntosindigenas, :boolean
  end
end
