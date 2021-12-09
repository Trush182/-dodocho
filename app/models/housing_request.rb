class HousingRequest < ApplicationRecord
  MAX_NIGHTS_COUNT = 3
  HOUR_BEFORE_POSTPONING_REQUESTS_TO_NEXT_DAY = 23
  TwilioClient = Twilio::REST::Client.new(ENV['AC7985a1d987860c452b1b15da7440c284'], ENV['7f1c0d4bbf71513a512febee6685f710'])


  belongs_to :room
  belongs_to :seeker, class_name: "User"
  belongs_to :host, class_name: "User"

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, presence: true

  after_create :send_message

  def pending!
    self.status = :pending
  end

  private

  def send_message
    TwilioClient.messages.create(
                  # {self.seeker.name}
                  from: '+12312448223',
                  #  to: "#{self.guide.phone_number}"
                  to: "+33661634782",
                  body: "Thomas voudrait bien être hébergé chez toi! Go to http://www.dodocho.top/"
                  )
  end

end


