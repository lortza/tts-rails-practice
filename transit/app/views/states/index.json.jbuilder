json.array!(@states) do |state|
  json.extract! state, :id, :name, :abv
  json.url state_url(state, format: :json)
end
