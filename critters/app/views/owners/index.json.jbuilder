json.array!(@owners) do |owner|
  json.extract! owner, :id, :name, :city, :country_id
  json.url owner_url(owner, format: :json)
end
