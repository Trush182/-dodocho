class Host::HousingRequestsController < ApplicationController
  def index
    @requests = current_user.requests.includes(:room).order(created_at: :desc)
    @host_housing_requests = HousingRequest.includes(:room).where(rooms: {host_id: current_user.id})
    @pending = @host_housing_requests.where(status: "pending")
    @accepted = @host_housing_requests.where(status: "accepted")
    @refused = @host_housing_requests.where(status: "declined")
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
