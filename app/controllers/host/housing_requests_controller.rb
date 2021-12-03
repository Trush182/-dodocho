class Host::HousingRequestsController < ApplicationController
  def index
    @housing_requests = Request.includes(:request).where(requests: {user: :seeker_id})
    @pending = @housing_requests.where(status: "accepté")
    @pending = @housing_requests.where(status: "refusé")
  end

  def accept
    @housing_requests = HousingRequests.find(params[:id])
    @housing_requests.status = "accepté"
    @housing_requests.save!

    redirect_to host_housing_requests_path
  end

  def decline
    @housing_requests = HousingRequests.find(params[:id])
    @housing_requests.status = "refusé"
    @housing_requests.save!

    redirect_to host_housing_requests_path
  end
end
