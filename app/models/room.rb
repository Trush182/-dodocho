class Room < ApplicationRecord
  FACILITIES = ["Douche", "TV", "Wifi", "Livres"]
  HOUSING_TYPES = ["dormitory", "personal room", "shared room"]

  has_many_attached :photos

  belongs_to :host, class_name: "User"
  has_many :housing_requests

  validates :summary, presence: true
  validates :address, presence: true
  validates :housing_type, presence: true, inclusion: { in: HOUSING_TYPES }
end
