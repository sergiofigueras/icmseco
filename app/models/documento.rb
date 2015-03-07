class Documento < ActiveRecord::Base
  validates_presence_of :nome
  has_many :arquivos, dependent: :destroy
  belongs_to :acao
  accepts_nested_attributes_for :arquivos
end
