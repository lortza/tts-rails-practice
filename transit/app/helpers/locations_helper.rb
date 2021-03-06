module LocationsHelper

  # Parse the API data to store it in an array of hashes - each bus is a hash.
  def fetch_api_data source
    http = Net::HTTP.get_response(URI.parse(source))
    data = http.body
    JSON.parse(data)
  end #fetch

  # Compare latitude/longitude of the user and all the buses to see if they are
  # within 0.01 degree
  def is_nearby(lat_user, long_user, lat_bus, long_bus)
    (long_user - long_bus).abs <= 0.0095 && (lat_user - lat_bus).abs <= 0.0095
  end #nearby
end #module
