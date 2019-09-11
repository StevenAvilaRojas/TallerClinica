json.extract! consultorio, :id, :nombre, :codigo, :ubicacion, :tipo, :created_at, :updated_at
json.url consultorio_url(consultorio, format: :json)
