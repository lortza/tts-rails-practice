class Critter < ActiveRecord::Base
  belongs_to :type
  belongs_to :owner
end
