class Excursao < ApplicationRecord
belongs_to :veiculo

validates :nome, :partida, :chegada, :qtdveiculos, :destino, presence: true

end
