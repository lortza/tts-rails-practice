json.array!(@critters) do |critter|
  json.extract! critter, :id, :name, :type_id, :owner_id, :hobby, :photo_url
  json.url critter_url(critter, format: :json)
end
