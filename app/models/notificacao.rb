class Notificacao < ActiveRecord::Base
  belongs_to :arquivo
  validates_presence_of :texto
end
