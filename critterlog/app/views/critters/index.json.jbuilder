json.array!(@critters) do |critter|
  json.extract! critter, :id, :name, :breed, :city, :hobbies, :guardian, :photo_url
  json.url critter_url(critter, format: :json)
end
