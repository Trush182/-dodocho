class HousingRequest < ApplicationRecord
  Client = Twilio::REST::Client.new(ENV['TWILIO_ID'], ENV['TWILIO_TOKEN'])
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
      from: '+16108970968',
      to: host.phone_number || "+33661634782",
      body: "Bonjour, vous avez une d'hébergement de la part de #{seeker&.name}! Vous pouvez vous connectez sur www.dodocho.top afin de lui répondre."
    )
  end
end
