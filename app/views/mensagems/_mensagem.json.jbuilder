json.extract! mensagem, :id, :description, :name, :endereco, :telefone, :created_at, :updated_at
json.url mensagem_url(mensagem, format: :json)
