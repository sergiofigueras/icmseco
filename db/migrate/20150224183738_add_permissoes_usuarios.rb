class AddPermissoesUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :destinacao_residuos_solidos, :boolean
    add_column :usuarios, :saneamento_basico, :boolean
    add_column :usuarios, :unidades_conservacao, :boolean
    add_column :usuarios, :pmma, :boolean
    add_column :usuarios, :ccq, :boolean
    add_column :usuarios, :agua, :boolean
    add_column :usuarios, :agricultura, :boolean
  end
end
