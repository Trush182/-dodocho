class Room < ApplicationRecord
  HOUSING_TYPES = ["dormitory", "personal room", "shared room"]

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many_attached :photos

  belongs_to :host, class_name: "User"
  has_many :housing_requests

  validates :summary, presence: true
  validates :address, presence: true
  validates :housing_type, presence: true, inclusion: { in: HOUSING_TYPES }

  def distance_from(coordinates)
    Geocoder::Calculations.distance_between([latitude, longitude], coordinates).floor(1)
  end
end
