json.array!(@absences) do |absence|
  json.extract! absence, :start_day, :end_day, :user_id, :reason, :comment
  json.url absence_url(absence, format: :json)
end