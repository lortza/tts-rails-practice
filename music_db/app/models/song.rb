class Song < ActiveRecord::Base
  belongs_to :artist

  validates :name, presence: true, length: {minimum: 1}
  validates :artist_id, presence: true
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
