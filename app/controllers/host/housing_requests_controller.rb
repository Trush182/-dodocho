class Host::HousingRequestsController < ApplicationController
  def index
    @requests = current_user.housing_requests.includes(:room).order(created_at: :desc)
  end

  def accept
    @housing_request = HousingRequest.find(params[:id])
    @housing_request.status = "accepted"
    @housing_request.save!

    redirect_to host_housing_requests_path
  end

  def decline
    @housing_request = HousingRequest.find(params[:id])
    @housing_request.status = "declined"
    @housing_request.save!

    redirect_to host_housing_requests_path
  end
end
