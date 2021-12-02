class Seeker::HousingRequestsController < ApplicationController
  def index
    @user = current_user
    @requests = @user.requests
  end

  # def create
  # end

  # private

  # def rooms_params
  #   params.require(:room).permit(:id)
  # end
end
