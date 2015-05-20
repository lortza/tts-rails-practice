class Song < ActiveRecord::Base
  belongs_to :artist

  validates :name, presence: true, length: {minimum: 1}
  validates :artist_id, presence: true
  validates_uniqueness_of :name, :scope => :artist_id #this validates the song name within the scope of the artist id

  #creating a recent scope that gives items created within the last indicated time
  scope :recent, -> (minutes_past=60) {where("created_at > ?", minutes_past.minutes.ago)}

#creating a scope with things created today
  scope :today, -> {where("DATE(created_at) = ?", Date.today)}
end

# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  artist_id  :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_songs_on_artist_id  (artist_id)
#
