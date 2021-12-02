class Seeker::HousingRequestsController < ApplicationController
  def index
    @housing_requests = HousingRequest.all
  end

  def create
  end
end
