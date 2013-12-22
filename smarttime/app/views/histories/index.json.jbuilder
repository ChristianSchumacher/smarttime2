json.array!(@histories) do |history|
  json.extract! history, :action, :user_id, :description
  json.url history_url(history, format: :json)
end