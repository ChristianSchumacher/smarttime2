json.array!(@activities) do |activity|
  json.extract! activity, :appointment_date, :start_time, :end_time, :allocated_at, :work_id, :activity_time, :customer_id, :hire_car_id, :direct_contact, :customer_service_agreement, :data_privacy_statement
  json.url activity_url(activity, format: :json)
end