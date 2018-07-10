json.extract! patient, :id, :f_name, :l_name, :gender, :birth_date, :address, :apt_suite, :city, :state, :zip, :phone, :email, :created_at, :updated_at
json.url patient_url(patient, format: :json)
