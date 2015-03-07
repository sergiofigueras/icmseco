class Acao < ActiveRecord::Base
  validates_presence_of :nome, :desc, :prazo
  has_many :documentos
end
