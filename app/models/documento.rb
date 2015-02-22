class Documento < ActiveRecord::Base
  validates_presence_of :nome
  has_many :arquivos
  belongs_to :meioambiente
  accepts_nested_attributes_for :arquivos
end
