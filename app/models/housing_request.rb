class HousingRequest < ApplicationRecord
  belongs_to :room
  belongs_to :seeker
end
