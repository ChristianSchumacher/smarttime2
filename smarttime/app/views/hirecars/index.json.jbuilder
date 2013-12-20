json.array!(@hirecars) do |hirecar|
  json.extract! hirecar, :badge, :regestration_date, :fuel, :brand, :model, :comment, :defect, :smoking, :status_id, :tech_check
  json.url hirecar_url(hirecar, format: :json)
end