class Room < ApplicationRecord
  belongs_to :host, class_name: "User"
  has_many :housing_requests

  HOUSING_TYPES = ["dormitory", "personnal room", "shared room"]
  validates :summary, presence: true
  validates :address, presence: true
  validates :housing_type, presence: true, inclusion: { in: HOUSING_TYPES }
end
