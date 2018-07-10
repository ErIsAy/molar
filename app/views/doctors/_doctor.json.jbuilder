json.extract! doctor, :id, :f_name, :l_name, :specialty, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
