class Seeker::HousingRequestsController < ApplicationController
  def index
    @user = current_user
    @requests = @user.requests
  end

  def create
    @request = HousingRequest.new
    @room = Room.find(params[:room_id])
    @request.room = @room
    @request.save!

    redirect_to seeker_housing_requests_path
  end
end
