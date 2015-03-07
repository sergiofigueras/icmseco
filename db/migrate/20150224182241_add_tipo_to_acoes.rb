class AddTipoToAcoes < ActiveRecord::Migration
  def change
    add_column :acoes, :tipo, :string
  end
end
