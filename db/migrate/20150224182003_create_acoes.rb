class CreateAcoes < ActiveRecord::Migration
  def change
    create_table :acoes do |t|
      t.string :nome
      t.string :desc
      t.datetime :prazo

      t.timestamps null: false
    end
  end
end
