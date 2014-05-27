json.array!(@cars) do |car|
  json.extract! car, :sign, :model, :last_case, :buy_date, :next_maintenance, :comments, :happy
  json.url car_url(car, format: :json)
end