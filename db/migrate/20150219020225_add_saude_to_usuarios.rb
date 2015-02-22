class AddSaudeToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :saude, :boolean
  end
end
