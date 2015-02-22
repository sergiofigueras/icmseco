class CreateMeioambiente < ActiveRecord::Migration
  def change
    create_table :meioambiente do |t|
      t.string :nome
      t.text :desc
      t.datetime :prazo

      t.timestamps null: false
    end
  end
end
