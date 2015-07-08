json.array!(@guardians) do |guardian|
  json.extract! guardian, :id, :name, :city, :country_id
  json.url guardian_url(guardian, format: :json)
end
