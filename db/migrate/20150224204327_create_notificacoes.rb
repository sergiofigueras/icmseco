class CreateNotificacoes < ActiveRecord::Migration
  def change
    create_table :notificacoes do |t|
      t.text :texto
      t.boolean :ack

      t.timestamps null: false
    end
  end
end
