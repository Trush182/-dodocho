
class Host::HousingRequestsController < ApplicationController
  TwilioClient = Twilio::REST::Client.new(ENV['AC7985a1d987860c452b1b15da7440c284'], ENV['7f1c0d4bbf71513a512febee6685f710'])

  def index
    @requests = current_user.housing_requests.includes(:room).order(created_at: :desc)
  end

  def accept
    @housing_request = HousingRequest.find(params[:id])
    @housing_request.status = "accepted"
    @housing_request.save!

    TwilioClient.messages.create(
                  body: ".. accepted your request. His/her number is",
                  # {current_user.name}
                  # {current_user.phone_number}. It's your turn now!"
                  from: '+12312448223',
                  # to: "#{contact_request.seeker.phone_number}"
                  to: "+33661634782"
                  )

    redirect_to host_housing_requests_path
  end

  def decline
    @housing_request = HousingRequest.find(params[:id])
    @housing_request.status = "declined"
    @housing_request.save!
    TwilioClient.messages
                .create(
                  body: " declined your request... :(",
                  #{current_user.name}
                  from: '+12312448223',
                  # to: "#{contact_request.explorer.phone_number}"
                  to: '+33661634782'
                  )

    redirect_to host_housing_requests_path
  end

  # def show
  #   @housing_request = HousingRequest.find(params[:id])
  # end

end
