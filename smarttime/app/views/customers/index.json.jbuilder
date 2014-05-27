json.array!(@customers) do |customer|
  json.extract! customer, :firstname, :lastname, :street, :zip, :city, :country, :comment, :car, :phone, :fax, :cellphone
  json.url customer_url(customer, format: :json)
end