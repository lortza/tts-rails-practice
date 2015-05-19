class Owner < ActiveRecord::Base
  has_many :dogs

  validates :name, presence: true, length: {minimum: 1}, uniqueness: true
  validates :phone, presence: true #look into http://www.rubydoc.info/gems/numero/0.0.2

end

# == Schema Information
#
# Table name: owners
#
#  id         :integer          not null, primary key
#  name       :string
#  phone      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
