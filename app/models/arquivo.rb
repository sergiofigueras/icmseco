class Arquivo < ActiveRecord::Base
  belongs_to :documento
  has_one :notificacao
  has_attached_file :upload
  validates_presence_of :upload
  validates_with AttachmentPresenceValidator, :attributes => :upload
  validates_with AttachmentSizeValidator, :attributes => :upload, :less_than => 10.megabytes
  validates_attachment_content_type :upload, :content_type => /\A*\Z/
end
