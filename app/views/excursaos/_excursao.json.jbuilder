json.extract! excursao, :id, :nome, :partida, :chegada, :qtdveiculos, :destino, :created_at, :updated_at
json.url excursao_url(excursao, format: :json)
