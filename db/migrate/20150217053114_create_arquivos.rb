class CreateArquivos < ActiveRecord::Migration
  def change
    create_table :arquivos do |t|
      t.integer :score
      t.boolean :cancelado
      t.string :observacao

      t.timestamps null: false
    end
  end
end
