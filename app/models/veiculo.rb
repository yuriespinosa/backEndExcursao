class Veiculo < ApplicationRecord
  has_many :excursaos
  
  validates :nome, :limite_passageiro, :valor, presence: true
end
