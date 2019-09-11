json.extract! paciente, :id, :nombres, :apellidos, :fecha, :documento, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
