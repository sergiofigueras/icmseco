class CreateDocumentos < ActiveRecord::Migration
  def change
    create_table :documentos do |t|
      t.string :nome

      t.timestamps null: false
    end
  end
end
