class HousingRequest < ApplicationRecord
  belongs_to :room
  belongs_to :seeker, class_name: "User"
end
