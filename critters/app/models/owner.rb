class Owner < ActiveRecord::Base
  belongs_to :country
  has_many :critters
end
