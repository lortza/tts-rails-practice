class Guardian < ActiveRecord::Base
  belongs_to :country
  has_many :critters
end
