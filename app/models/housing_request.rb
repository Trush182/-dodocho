class HousingRequest < ApplicationRecord
  Client = Twilio::REST::Client.new('AC7985a1d987860c452b1b15da7440c284', '7f1c0d4bbf71513a512febee6685f710')
  MAX_NIGHTS_COUNT = 3
  HOUR_BEFORE_POSTPONING_REQUESTS_TO_NEXT_DAY = 23

  belongs_to :room
  belongs_to :seeker, class_name: "User"

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, presence: true

  after_create :send_message

  def pending!
    self.status = :pending
  end


  private

  def send_message
        Client.messages.create(
                         from: '+12312448223',
                          to: '+33661634782',
                          body: "Hey friend, you have a new request"
                        )
  end
end
