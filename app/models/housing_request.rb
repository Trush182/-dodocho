class HousingRequest < ApplicationRecord
  belongs_to :room
  belongs_to :seeker, class_name: "User"

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, presence: true
end
