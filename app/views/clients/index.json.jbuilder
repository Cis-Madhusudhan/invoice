json.array!(@clients) do |client|
  json.extract! client, :business_name, :business_email, :name, :type, :company_size, :zip_code, :mobile, :state, :country_id, :fax, :internal_notes, :business_address, :business_phone, :pan, :tan, :city
  json.url client_url(client, format: :json)
end