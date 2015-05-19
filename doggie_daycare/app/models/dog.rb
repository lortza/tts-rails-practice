class Dog < ActiveRecord::Base
  belongs_to :owner

  validates :name, presence: true, length: {minimum: 1}, uniqueness: true
  validates :breed, :age, :owner_id, presence: true 
  # validates_uniqueness_of :name, :scope => :owner_id 

  #creating a recent scope that gives items created within the last indicated time
  scope :recent, -> (minutes_past=60) {where("created_at > ?", minutes_past.minutes.ago)}

end

# == Schema Information
#
# Table name: dogs
#
#  id         :integer          not null, primary key
#  name       :string
#  breed      :string
#  age        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  owner_id   :integer
#
# Indexes
#
#  index_dogs_on_owner_id  (owner_id)
#
