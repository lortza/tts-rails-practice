class Location < ActiveRecord::Base
  belongs_to :state

  geocoded_by :my_location
  after_validation :geocode          # auto-fetch coordinates

  def my_location
    "#{address}, #{city}, #{state.name}"
  end
end #class
