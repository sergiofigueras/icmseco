class AddAttachmentUploadToArquivos < ActiveRecord::Migration
  def self.up
    change_table :arquivos do |t|
      t.attachment :upload
    end
  end

  def self.down
    remove_attachment :arquivos, :upload
  end
end
