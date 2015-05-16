class Critter < ActiveRecord::Base
  mount_uploader :photo, AvatarUploader
end
