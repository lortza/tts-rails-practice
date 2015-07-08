class Country < ActiveRecord::Base
  has_many :owners
end
