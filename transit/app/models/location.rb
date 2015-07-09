class Location < ActiveRecord::Base
  belongs_to :state

  geocoded_by :my_location
  after_validation :geocode          # auto-fetch coordinates

  validates :address, :city, :state, presence: true

  CITIES = ["Atlanta", "Alpharetta", "Avondale Estates", "Chamblee", "Clarkston", "College Park", "Decatur", "Doraville", "Dunwoody", "East Point", "Fairburn", "Forest Park", "Hapeville", "Lithonia", "Morrow", "Palmetto", "Riverdale", "Roswell"," Sandy Springs", "Stone Mountain", "Union City"]

  validates :city, inclusion: CITIES

  def my_location
    "#{address}, #{city}, #{state.name}"
  end


end #class
