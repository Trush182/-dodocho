class HousingRequest < ApplicationRecord
  MAX_NIGHTS_COUNT = 3
  HOUR_BEFORE_POSTPONING_REQUESTS_TO_NEXT_DAY = 23

  belongs_to :room
  belongs_to :seeker, class_name: "User"

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, presence: true

  def pending!
    self.status = :pending
  end
end
