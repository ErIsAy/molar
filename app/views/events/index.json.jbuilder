json.array! @events do |event|
  date_format = event.all_day_event? ? '%Y-%m-%d' : '%Y-%m-%dT%H:%M:%S'
  json.id event.id
  json.title "#{event.patient.f_name} #{event.patient.l_name}"
  json.start event.start.strftime(date_format)
  json.end event.end.strftime(date_format)
  json.color event.color unless event.color.blank?
  json.allDay event.all_day_event? ? true : false
  json.update_url edit_patient_path(event.patient_id)
  json.edit_url edit_event_path(event)
end
