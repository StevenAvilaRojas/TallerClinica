json.extract! medico, :id, :nombres, :apellidos, :num_id, :num_cel, :tipo_medico, :created_at, :updated_at
json.url medico_url(medico, format: :json)
