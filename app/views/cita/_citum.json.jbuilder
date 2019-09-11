json.extract! citum, :id, :consultorio_id, :medico_id, :paciente_id, :fecha, :hora_inicio, :hora_fin, :motivo, :created_at, :updated_at
json.url citum_url(citum, format: :json)
