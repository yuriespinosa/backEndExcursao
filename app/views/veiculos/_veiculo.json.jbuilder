json.extract! veiculo, :id, :nome, :limite_passageiro, :valor, :created_at, :updated_at
json.url veiculo_url(veiculo, format: :json)
