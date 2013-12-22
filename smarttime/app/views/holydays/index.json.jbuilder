json.array!(@holydays) do |holyday|
  json.extract! holyday, :date, :name, :country
  json.url holyday_url(holyday, format: :json)
end