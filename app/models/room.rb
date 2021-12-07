class Room < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  
  has_many_attached :photos

  belongs_to :host, class_name: "User"
  has_many :housing_requests

  HOUSING_TYPES = ["dormitory", "personal room", "shared room"]
  validates :summary, presence: true
  validates :address, presence: true
  validates :housing_type, presence: true, inclusion: { in: HOUSING_TYPES }
end
