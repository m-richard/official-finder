class City < ActiveRecord::Base
  has_many :districts

  validates :name, presence: true
  validates :state, presence: true
end
