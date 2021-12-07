class Seeker::OfferedServicesController < ApplicationController
  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to edit_seeker_search_infos_path
  end

  private

  def user_params
    params.require(:user).permit(:id, services: [])
  end
end
