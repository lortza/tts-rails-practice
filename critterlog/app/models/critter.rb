class Critter < ActiveRecord::Base
  belongs_to :guardian
  mount_uploader :photo, AvatarUploader
end
