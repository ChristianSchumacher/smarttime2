json.array!(@statis) do |stati|
  json.extract! stati, :name, :description
  json.url stati_url(stati, format: :json)
end