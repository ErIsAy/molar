json.extract! appointment, :id, :date, :time, :type, :note, :status, :references, :references, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
